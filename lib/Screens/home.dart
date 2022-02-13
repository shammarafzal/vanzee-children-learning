import 'package:flutter/material.dart';
import 'package:vanzee/Screens/search.dart';
import 'package:vanzee/Screens/settings.dart';
import 'package:vanzee/Screens/story.dart';


class Home extends StatefulWidget{
  @override
  State createState() =>new Home_State();
}
class Home_State extends State<Home>{
  get child => null;
  int _selectIndex= 0;
  late String _title;
  List<Widget> _widgetOptions = <Widget>[
    StoryList(),
    Search(),
    SettingsPage(),
  ];
  void _OnItemTap(int index){
    setState(() {
      _selectIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Story';
          }
          break;
        case 1:
          {
            _title = 'Search';
          }
          break;
        case 2:
          {
            _title = 'Setings';
          }
          break;
      }
    });
  }
  @override
  initState() {
    super.initState();
    _title = 'Home';
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(_title, style: TextStyle(color: Colors.green),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color:  const Color.fromRGBO(235,159,73, 1),),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(235,159,73, 1),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        iconSize: 25,
// This is all you need!
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Story',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectIndex,
        onTap: _OnItemTap,
      ),


    );
  }
}
