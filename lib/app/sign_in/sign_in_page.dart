import 'package:couter_app/app/common_widget/custom_raised_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignInPage extends StatelessWidget {
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
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Text(
              'Sign up with Google',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
              ),
            ),
            borderRadius: 4.0,
            onPressed: _loginWithGoogle,
          ),
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Text(
              'Sign in with Facebook',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
              ),
            ),
            color: Colors.lightBlue,
            borderRadius: 4.0,
            onPressed: _logInWithFacebook,
          )
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
