import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Screens/story3/play_vide03.dart';
import 'package:vanzee/Screens/story3/story_animation3.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class StoryPage3 extends StatefulWidget {
  const StoryPage3({Key? key}) : super(key: key);

  @override
  _StoryPage3State createState() => _StoryPage3State();
}

class _StoryPage3State extends State<StoryPage3> {
  _abouttalktales() async {
    const url = "https://www.talktalesbooks.com/simple-sounds";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(

        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("Assets/os3.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: SizeConfig.screenHeight * 0.29,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () => {_abouttalktales()},
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StoryAnimation3  ()))
              },
              child: Container(
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.12),
                    // padding:  EdgeInsets.only(top: SizeConfig.screenHeight * 0.1),
                    height: SizeConfig.screenHeight * 0.2,
                    width: SizeConfig.screenWidth * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Assets/image.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: InkWell(
                      onTap: () => {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => StoryAnimation3  ()))
                      },
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PlayVideo3  ()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
