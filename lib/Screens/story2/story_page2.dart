import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Screens/story2/play_video2.dart';
import 'package:vanzee/Screens/story2/story_animation2.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class StoryPage2 extends StatefulWidget {
  const StoryPage2({Key? key}) : super(key: key);

  @override
  _StoryPage2State createState() => _StoryPage2State();
}

class _StoryPage2State extends State<StoryPage2> {
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
            image: AssetImage("Assets/os2.png"),
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
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: SizeConfig.screenHeight * 0.15,
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
                        MaterialPageRoute(builder: (context) => StoryAnimation2  ()))
                  },
                ),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 0.1,
              width: SizeConfig.screenWidth * 0.9 ,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StoryAnimation2  ()))
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RotatedBox(
                quarterTurns: 1,
                child: Container(
                  margin: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1,right:SizeConfig.screenHeight*0.04 ),
                  height: SizeConfig.screenHeight * 0.1,
                  width: SizeConfig.screenWidth * 0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("Assets/play_movie.png"),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => PlayVideo2  ()));
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
