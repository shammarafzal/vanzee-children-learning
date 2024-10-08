import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vanzee/Screens/bottom_bar_screens/about_app.dart';
import 'package:vanzee/Screens/bottom_bar_screens/about_talktales.dart';
import '../../Constants/constant.dart';
import '../../Settings/SizeConfig.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final Uri _url1 = Uri.parse(about_book);
  final Uri _url2 = Uri.parse(download_words_url);
  final Uri _url3 = Uri.parse(about_talktales_url);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Text(
              'Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ListTile(
              title: Text(
                'About the App',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              leading: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 240, 230, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Icon(
                    Icons.info_outline,
                    size: 35,
                    color: Color.fromRGBO(252, 109, 36, 1),
                  )),
              trailing: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 245, 248, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward),
                  )),
              onTap: ()  {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutApp()));
              },
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            ListTile(
              title: Text(
                'About Talk Tales',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              leading: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(231, 247, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Icon(
                    Icons.help,
                    size: 35,
                    color: Color.fromRGBO(30, 163, 238, 1),
                  )),
              trailing: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 245, 248, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward),
                  )),
              onTap: ()  {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutTalkTales()));
              },
            ),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
      ),
    ),
        ));
  }
}
