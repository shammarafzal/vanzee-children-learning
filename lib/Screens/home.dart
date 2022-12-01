import 'package:flutter/material.dart';
import 'package:vanzee/Screens/settings.dart';
import 'package:vanzee/Screens/story.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new Home_State();
}

class Home_State extends State<Home> {
  get child => null;
  int _selectIndex = 0;
  late String _title;
  List<Widget> _widgetOptions = <Widget>[
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
    _title = 'Simple Silly Speech Sounds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          _title,
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: const Color.fromRGBO(235, 159, 73, 1),
        ),
      ),
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
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Stories',
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
