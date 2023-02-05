import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vanzee/Screens/bottom_bar_screens/settings.dart';
import 'package:vanzee/Screens/bottom_bar_screens/story.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new Home_State();
}

class Home_State extends State<Home> with WidgetsBindingObserver{
  bool _isPaused = false;
  get child => null;
  int _selectIndex = 0;
  late String _title;
  List<Widget> _widgetOptions = <Widget>[
    StoryCard1(),
    StoryCard1(),
    SettingsPage(),
  ];
  void _OnItemTap(int index) {
    setState(() {
      _selectIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Simple Silly Speech Sounds';
          }
          break;
        case 1:
          {
            _title = 'About App & Settings';
          }
          break;
      }
    });
  }

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _title = 'Simple Silly Speech Sounds';

  }
  _showLockScreen(){
    // Navigator.of(context).pushReplacementNamed('/home');
    // SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    exit(0);
    // _isPaused = false;
  }
  // void _showLockScreen() async {
  //   await Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
  //       WillPopScope(
  //         child: ...,
  //         onWillPop: () => Future.value(false), // prevents the system from dismissing this route
  //       )));
  //
  //   _isPaused = false;
  // }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
   super.dispose();
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state){
    super.didChangeAppLifecycleState(state);
    if(state == AppLifecycleState.inactive || state == AppLifecycleState.detached || state == AppLifecycleState.paused) {
      setState(() {});
      _isPaused = true;
      _showLockScreen();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text(
      //     _title,
      //     style: TextStyle(color: Color.fromRGBO(235, 159, 73, 1), fontWeight: FontWeight.bold, fontSize: 26),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   iconTheme: IconThemeData(
      //     color: const Color.fromRGBO(235, 159, 73, 1),
      //   ),
      // ),
      body: 
      SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 18,
        unselectedFontSize: 18,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices_other, color: Color.fromRGBO(235, 159, 73, 1),),
            label: 'Simple Silly Speech Sounds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'App Info',
          ),
        ],
        currentIndex: _selectIndex,
        onTap: _OnItemTap,
      ),
    );
  }
}
