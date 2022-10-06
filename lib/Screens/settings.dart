import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vanzee/API/api.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Controller/me_controller.dart';
import 'package:vanzee/Screens/Auth/change_password.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final MeController meController = Get.put(MeController());
  _aboutapp() async {
    const url = "https://www.talktalesbooks.com/simple-sounds";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _abouttalktales() async {
    const url = "https://www.talktalesbooks.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _downloadwords() async {
    const url = "https://www.talktalesbooks.com/download-target-words";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Timer? _timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   'Account',
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          // ),
          // Padding(padding: EdgeInsets.all(10)),
          // ListTile(
          //   title: Obx(() {
          //     return ListView.builder(
          //         itemCount: meController.meList.length,
          //         shrinkWrap: true,
          //         itemBuilder: (BuildContext context, index) {
          //           return Text(
          //             meController.meList[index].name,
          //             style: TextStyle(color: Colors.black),
          //           );
          //         });
          //   }),
          //   leading: Container(
          //       width: 55,
          //       height: 55,
          //       decoration: BoxDecoration(
          //           color: Color.fromRGBO(246, 245, 248, 1),
          //           borderRadius: BorderRadius.all(Radius.circular(25))),
          //       child: Icon(
          //         Icons.account_circle_outlined,
          //         size: 35,
          //         color: Color.fromRGBO(182, 188, 200, 1),
          //       )),
          //   subtitle: Obx(() {
          //     return ListView.builder(
          //         itemCount: meController.meList.length,
          //         shrinkWrap: true,
          //         itemBuilder: (BuildContext context, index) {
          //           return Text(
          //             meController.meList[index].email,
          //             style: TextStyle(color: Colors.black),
          //           );
          //         });
          //   }),
          //   trailing: Container(
          //       decoration: BoxDecoration(
          //           color: Color.fromRGBO(246, 245, 248, 1),
          //           borderRadius: BorderRadius.all(Radius.circular(10))),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Icon(Icons.arrow_forward),
          //       )),
          //   onTap: () => {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const ChangePassword()),
          //     )
          //     // Navigator.of(context).pushReplacementNamed('/changePassword')
          //   },
          // ),
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
            onTap: () => {_aboutapp()},
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
            onTap: () => {_abouttalktales()},
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
            onTap: () => {_downloadwords()},
          ),
          Padding(padding: EdgeInsets.all(8.0)),
          // ListTile(
          //   title: Text(
          //     'Logout',
          //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //   ),
          //   leading: Container(
          //       width: 55,
          //       height: 55,
          //       decoration: BoxDecoration(
          //           color: Color.fromRGBO(255, 231, 237, 1),
          //           borderRadius: BorderRadius.all(Radius.circular(25))),
          //       child: Icon(
          //         Icons.logout,
          //         size: 35,
          //         color: Color.fromRGBO(250, 40, 91, 1),
          //       )),
          //   trailing: Container(
          //       decoration: BoxDecoration(
          //           color: Color.fromRGBO(246, 245, 248, 1),
          //           borderRadius: BorderRadius.all(Radius.circular(10))),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Icon(Icons.logout),
          //       )),
          //   onTap: () async {
          //     SharedPreferences prefs = await SharedPreferences.getInstance();
          //     try {
          //       var response = await API().logout();
          //       if (response['status'] == true) {
          //         _timer?.cancel();
          //         await EasyLoading.showSuccess(response['message']);
          //         prefs.remove("token");
          //         Navigator.of(context).pushReplacementNamed('/signin');
          //       } else {
          //         _timer?.cancel();
          //         await EasyLoading.showError(response['message']);
          //       }
          //     } catch (e) {
          //       _timer?.cancel();
          //       await EasyLoading.showError(e.toString());
          //     }
          //   },
          // ),
        ],
      ),
    ));
  }
}
