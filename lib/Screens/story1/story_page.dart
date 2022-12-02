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
            image: AssetImage("Assets/os1.png"),
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
            // Container(
            //   height: SizeConfig.screenHeight * 0.12,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.black),
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.of(context).push(
            //           MaterialPageRoute(builder: (context) => StoryAnimation  ()));
            //     },
            //   ),
            // ),
            // Bounce(
            //     duration: Duration(milliseconds: 110),
            //     onPressed: (){  },
            //     child: Image.asset("Assets/image.png")
            // ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StoryAnimation  ()))
              },
              child: Container(
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.12),
                    // padding:  EdgeInsets.only(top: SizeConfig.screenHeight * 0.1),
                    height: SizeConfig.screenHeight * 0.2,
                    width: SizeConfig.screenWidth * 0.2,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   fit: BoxFit.fill,
                        //   image: AssetImage("Assets/image.png"),
                        // ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: InkWell(
                      onTap: () => {
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StoryAnimation  ()))
                      },
                      child:   RotatedBox(
                        quarterTurns: 2,
                        child: SizedBox(
                            width: 200,
                            height: 200,
                            child: Lottie.network(
                                'https://assets8.lottiefiles.com/packages/lf20_80nu1g6c.json')),
                      ),
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
