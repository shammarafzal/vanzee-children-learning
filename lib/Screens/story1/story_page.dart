import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Screens/story1/play_video1.dart';
import 'package:vanzee/Screens/story1/story_animation.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import 'package:lottie/lottie.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
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
        height: SizeConfig.screenHeight * 1,
        width: SizeConfig.screenWidth * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("Assets/os1.png"),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.25,
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
                MaterialPageRoute(builder: (context) => StoryAnimation  ()))
              },
              child: Container(
                margin: EdgeInsets.only(left: SizeConfig.screenWidth * 0.25),
                height: SizeConfig.screenHeight * 0.5,
                width: SizeConfig.screenWidth * 0.25,
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                        width: 180,
                        height: 180,
                        child: Lottie.network(
                            'https://assets8.lottiefiles.com/packages/lf20_80nu1g6c.json')),
                  ),
                ),
              ),
            ),

            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PlayVideo1  ()));
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => VideosViewer(
                  //           videoLink:
                  //               'http://assets.talktalesapps.com/s1video.mp4',
                  //         )));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
