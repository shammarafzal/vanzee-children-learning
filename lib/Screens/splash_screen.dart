import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vanzee/Constants/constant.dart';
import 'package:vanzee/Screens/auth/login.dart';
import 'dart:async';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Screens/front_page.dart';

import '../Settings/SizeConfig.dart';

// var isLoggedIn;
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startTime();
    getData();
    audioPlayer.play(AssetSource(talk_tales_mp3));
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  getData() async {
    // var prefs = await SharedPreferences.getInstance();
    // isLoggedIn = (prefs.getBool('isLoggedIn') == null)
    //     ? false
    //     : prefs.getBool('isLoggedIn');
    startTime();
  }

  route() {
    Navigator.of(context).pushReplacementNamed('/home');
    // print(isLoggedIn);
    // isLoggedIn ? Navigator.of(context).pushReplacementNamed('/home') : Navigator.of(context).pushReplacementNamed('/login');
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
              "Welcome to Simple Silly Speech Sounds",
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
