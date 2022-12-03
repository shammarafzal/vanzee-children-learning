import 'package:flutter/material.dart';
import 'package:vanzee/Constants/constant.dart';
import 'dart:async';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';

import '../Settings/SizeConfig.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(splash_image, height: SizeConfig.screenHeight * 0.3, width: SizeConfig.screenWidth * 0.3,),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Welcome to Simple Sounds",
              style: TextStyle(fontSize: 20.0, color: Colors.green),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
