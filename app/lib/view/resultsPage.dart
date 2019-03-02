import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:app/view/widgets/color.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: <Widget>[
              _background(),
              _titleBar(context),
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  _titleWidget(context),
//                  _subTitleWidget(context),
//                  _cameraIcon(context),
//                  _uploadButton(context),
//                ],
//              )
            ]
        )
    );
  }


  Widget _background() {
    return Container(
        decoration: BoxDecoration(
            color: LightOliveGreen,
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/backgrounds/3.0x/bgCircles.png'),
              fit: BoxFit.cover,
            )
        )
    );
  }

  Widget _titleBar(BuildContext context) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(height: height * .06),

          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Text('Results')
            ],
          )
        )
    );
  }
  


  Widget _titleWidget(BuildContext context) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final top = height * .213;

    return Container(
        padding: EdgeInsets.only(top: top),
        child: Text(
            "Take Your Best Shot!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )
        )
    );
  }

  Widget _subTitleWidget(BuildContext context) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final top = height * .017;

    final text = "Let's see if you can outsmart our AI, Rico.".toUpperCase();
    return Container(
        padding: EdgeInsets.only(top: top),
        child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.0,
                letterSpacing: 1.6,
                fontWeight: FontWeight.w500,
                color: Colors.white
            )
        ));
  }

  Widget _cameraIcon(BuildContext context) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return Container(
      padding: EdgeInsets.only(top: height *.081),
      child: SvgPicture.asset(
        'assets/images/icons/icon-camera.svg',
        width: width * .4,
        height: height * .141,
        color: Colors.white.withOpacity(.45),
      ),
    );
  }

  Widget _uploadButton(BuildContext context) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return Container(
        padding: EdgeInsets.only(
          top: height * .113,
          right: width * .1665,
          left: width * .1665,
        ),


        child: RaisedButton(
          child: Container(
            //padding: EdgeInsets.symmetric(horizontal: width * 0.66),
              constraints: BoxConstraints(minHeight: height * .06,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buttonText(),
                  _buttonIcon(context),
                ],
              )
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          color: LightOliveGreen,
          onPressed: () {
            print('pressed');
          },
        )
    );
  }

  Widget _buttonText() {
    final text = "Upload a photo".toUpperCase();
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 16.0,
      ),
    );
  }

  Widget _buttonIcon(BuildContext context) {
    final mediaData = MediaQuery.of(context);
    final height = mediaData.size.height;
    final width = mediaData.size.width;

    return SvgPicture.asset(
      'assets/images/icons/icon-upload.svg',
      color: Colors.white,
      width: 24.0,
      height: 24.0,
    );
  }
}