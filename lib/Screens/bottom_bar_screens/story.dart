import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vanzee/Screens/story2/story_animation2.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

import '../../Constants/constant.dart';
import '../story1/story_animation.dart';
import '../Components/story_page.dart';
import '../story3/story_animation3.dart';

class StoryCard1 extends StatefulWidget {
  const StoryCard1({
    Key? key,
  }) : super(key: key);

  @override
  _StoryCard1State createState() => _StoryCard1State();
}

class _StoryCard1State extends State<StoryCard1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return SingleChildScrollView(
      child:
        SizedBox(
          height: SizeConfig.screenHeight * 0.8,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: shortestSide < 600 ? SizeConfig.screenWidth * 0.3 : SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenHeight * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(story1_open),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: shortestSide < 600 ? SizeConfig.screenWidth * 0.3 : SizeConfig.screenWidth * 0.4,
                          height: SizeConfig.screenHeight * 0.08,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story1_openingScene, video_url: s1Movie, onPress: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => StoryAnimation()));
                                  },)));
                            },
                              color: Color.fromRGBO(100,114,43,0.8),
                            textColor: Colors.white,
                            child: Text(
                              'Play',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: shortestSide < 600 ? SizeConfig.screenWidth * 0.3 : SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenHeight * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(story2_open),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: shortestSide < 600 ? SizeConfig.screenWidth * 0.3 : SizeConfig.screenWidth * 0.4,
                          height: SizeConfig.screenHeight * 0.08,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story2_openingScene, video_url: s2Movie, onPress: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => StoryAnimation2()));
                                  },)));
                            },
                            color: Color.fromRGBO(17,67,117,0.8),
                            textColor: Colors.white,
                            child: Text(
                              'Play',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: shortestSide < 600 ? SizeConfig.screenWidth * 0.3 : SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenHeight * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(story3_open),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: shortestSide < 600 ? SizeConfig.screenWidth * 0.3 : SizeConfig.screenWidth * 0.4,
                          height: SizeConfig.screenHeight * 0.08,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story3_openingScene, video_url: s3movie, onPress: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => StoryAnimation3()));
                                  },)));
                            },
                            color: Color.fromRGBO(161,78,34,0.8),
                            textColor: Colors.white,
                            child: Text(
                              'Play',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
