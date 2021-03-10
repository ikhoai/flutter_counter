import 'package:couter_app/app/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({@required this.auth, @required this.onSignOut });
  final VoidCallback onSignOut;
  final AuthBase auth;

  Future<void> _logout() async {
    try {
      await auth.signOut();
      onSignOut();
    }
    catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          FlatButton(
              onPressed: _logout,
              child: Text('Log out', style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white70
              ) ))
        ],
      ),
    );
  }
}
