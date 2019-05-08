import 'dart:io';
import 'package:flutter/material.dart';
import 'package:app/view/widgets/color.dart';
import 'package:app/view/createGamePage.dart';

class NewGamePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return _background(
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
              height: height*0.2,
            ),
            _createGameButton(context),
            _joinGameButton(context)
          ],
        )
      )
    );
  }

  Widget _background({Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: LightBlue,
        image: DecorationImage(
          image: AssetImage(
            'assets/images/backgrounds/3.0x/bgCirclesSplash.png'),
          fit: BoxFit.cover,
          )
        ),
      child: child,
    );
  }

  Widget _createGameButton(BuildContext context){
    return _button(context, "Create a Game", "/creategame");
  }

  Widget _joinGameButton(BuildContext context){
    return _button(context, "Join a Game", "/joingame");
  }

  Widget _button(BuildContext context, String text, String path) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return Container(
      padding: EdgeInsets.only(
        top: height * .05,
        right: width * .1665,
        left: width * .1665,
      ),
      child: RaisedButton(
        child: Container(
          constraints: BoxConstraints(minHeight: height * .06,),
          child: _buttonText(text)
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        color: LightOliveGreen,
        onPressed: () => Navigator.of(context).pushNamed(path),
      )
    );
  }

  Widget _buttonText(String btnText) {
    final text = btnText;
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 16.0,
        ),
      )
    );
  }
}
