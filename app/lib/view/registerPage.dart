import 'dart:io';
import 'package:flutter/material.dart';
import 'package:app/view/widgets/button.dart';
import 'package:app/view/widgets/color.dart';
import 'package:app/view/widgets/misc.dart';
import 'package:app/view/widgets/input.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return circlesSplashBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: height*0.1,
            ),
            Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue,
                fontSize: 20.0
              ),
            ),
            inputField("Phone Number", ""),
            inputField("Username", ""),
            inputField("Password", "", secure: true),
            _registerButton(context),
          ],
        )
      ),
      color: LightBlue
    );
  }

  Widget _registerButton(BuildContext context){
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return Container(
      padding: EdgeInsets.only(
        top: height * .02,
        right: width * .1665,
        left: width * .1665,
      ),
      child: raisedButton(
        "Sign Up",
        LightOliveGreen,
        Colors.white,
        action: () {
          print("Need to validate inputs.");
          Navigator.of(context).pushNamed('/verification');
        }
      )
    );
  }
}
