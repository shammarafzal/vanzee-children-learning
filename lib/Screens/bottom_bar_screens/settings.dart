import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Screens/bottom_bar_screens/web_view.dart';
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

  Future<void> _aboutapp() async {
    if (!await launchUrl(_url1)) {
      throw 'Could not launch $_url1';
    }
  }
  Future<void> _downloadwords() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }
  Future<void> _aboutbook() async {
    if (!await launchUrl(_url3)) {
      throw 'Could not launch $_url3';
    }
  }

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
                shortestSide > 600 ?
                _aboutapp() :
              Navigator.push(
                context,
              MaterialPageRoute(builder: (context) => WebViewScreen(link: about_book,)));
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

                shortestSide > 600 ?
                _aboutbook() :  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebViewScreen(link: about_talktales_url,)));
              },
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            ListTile(
              title: Text(
                'Download Target Words',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              leading: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 235, 254, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Icon(
                    Icons.download,
                    size: 35,
                    color: Color.fromRGBO(87, 49, 250, 1),
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
                shortestSide > 600 ?
                _downloadwords() :   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebViewScreen(link: download_words_url,)));
              },
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              leading: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 235, 254, 1),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Icon(
                    Icons.logout,
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
              onTap: ()  async{
                  await FirebaseAuth.instance.signOut();
                  final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
                  prefs.setBool('isLoggedIn', false);
                  Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
          ],
      ),
    ),
        ));
  }
}
