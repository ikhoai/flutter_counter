import 'package:couter_app/app/common_widget/custom_raised_button.dart';
import 'package:couter_app/app/services/auth.dart';
import 'package:couter_app/app/sign_in/sign_in_btn.dart';
import 'package:couter_app/app/sign_in/social_sign_in_btn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.auth, @required this.onSignIn}) : super(key: key);
  final void Function(User) onSignIn;
  final AuthBase auth;

  Future<void> _loginAnonymous() async {
    try {
      final user = await auth.signInAnonymously();
      onSignIn(user);
    } catch (e) {
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time tracker'),
        elevation: 2.0,
      ),
      body: _buildContainer(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48.0),
          SocialSignInButton(
            imgSource: 'images/google-logo.png',
            text: 'Sign in with Google',
            color: Colors.white70,
            textColor: Colors.black87,
            onPressed: _loginWithGoogle,
          ),
          SizedBox(height: 8.0),
        SocialSignInButton(
          imgSource: 'images/facebook-logo.png',
          text: 'Sign in with Facebook',
          color: Color(0XFF3B5998),
          textColor: Colors.white70,
          onPressed: _logInWithFacebook,
        ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with Email',
            textColor: Colors.white70,
            color: Colors.teal,
            onPressed: _loginWithEmail,
          ),
          SizedBox(height: 8.0),
          Text('or',
            style: TextStyle(fontSize: 14.0, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Go Anonymous',
            textColor: Colors.white70,
            color: Colors.lightGreen,
            onPressed: _loginAnonymous,
          ),
        ],
      ),
    );
  }
}

_logInWithFacebook() {
  print('log with facebook');
}

_loginWithGoogle() {
  print('login with Google');
}

_loginWithEmail() {
  print('log in with Email');
}






