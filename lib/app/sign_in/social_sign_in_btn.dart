import 'package:couter_app/app/common_widget/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String text,
    @required String imgSource,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super (
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(imgSource),
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          Opacity(
            opacity: 0.0,
            child: Image.asset(imgSource),
          ),
        ],
      ),
      color: color,
      onPressed: onPressed
  );
}