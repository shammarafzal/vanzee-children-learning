import 'package:flutter/material.dart';
import 'package:vanzee/Screens/story2/story_animation2.dart';
import '../../Constants/constant.dart';
import '../../Settings/SizeConfig.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Components/animated_controller.dart';
import '../Components/play_video.dart';
import '../Components/story_page.dart';
import '../bottom_bar_screens/home.dart';

class SingleStoryComponentF2 extends StatefulWidget {
  const SingleStoryComponentF2({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponentF2> createState() => _SingleStoryComponentF2State();
}

class _SingleStoryComponentF2State extends State<SingleStoryComponentF2> {
  final shakeKey1 = GlobalKey<ShakeWidgetState>();
  final shakeKey2 = GlobalKey<ShakeWidgetState>();
  final shakeKey3 = GlobalKey<ShakeWidgetState>();
  final shakeKey4 = GlobalKey<ShakeWidgetState>();
  final shakeKey5 = GlobalKey<ShakeWidgetState>();
  final shakeKey6 = GlobalKey<ShakeWidgetState>();
  final shakeKey7 = GlobalKey<ShakeWidgetState>();
  final shakeKey8 = GlobalKey<ShakeWidgetState>();
  final shakeKey9 = GlobalKey<ShakeWidgetState>();

  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffA4C2F4),
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: [
            ///////// ROW 1 ////////
            Container(
              width: SizeConfig.screenWidth * 0.48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ShakeWidget(
                            key: shakeKey1,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(uhoh_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey1.currentState?.shake();
                                  audioPlayer.play(
                                      uhoh_mp3);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                          ),
                          ShakeWidget(
                            key: shakeKey2,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(bam_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey2.currentState?.shake();
                                  audioPlayer.play(
                                      bam_mp3);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.1,
                          width: SizeConfig.screenWidth * 0.15,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(back_icon),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ShakeWidget(
                            key: shakeKey3,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ow_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey3.currentState?.shake();
                                  audioPlayer.play(
                                      ow_mp3);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                          ),
                          ShakeWidget(
                            key: shakeKey4,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ohno_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey4.currentState?.shake();
                                  audioPlayer.play(
                                      ohno_mp3);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.1,
                        width: SizeConfig.screenWidth * 0.15,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ShakeWidget(
                            key: shakeKey5,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ohman_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey5.currentState?.shake();
                                  audioPlayer.play(
                                      ohman_mp3);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                          ),
                          ShakeWidget(
                            key: shakeKey6,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(bom_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey6.currentState?.shake();
                                  audioPlayer.play(
                                      bom_mp3);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.1,
                          width: SizeConfig.screenWidth * 0.15,
                          // decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //       fit: BoxFit.fill,
                          //       image: AssetImage(back_icon),
                          //     ),
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                ],
              ),
            ),
            Container(width: 2, height: SizeConfig.screenHeight, color: Colors.white,),
            Container(
              width: SizeConfig.screenWidth * 0.475,
              child: Row(
                children: [
                  ///////// ROW 2 ////////
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ShakeWidget(
                            key: shakeKey7,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ohyeah_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey7.currentState?.shake();
                                  audioPlayer.play(
                                      ohyeah_mp3);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                          ),
                          ShakeWidget(
                            key: shakeKey8,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(pop_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey8.currentState?.shake();
                                  audioPlayer.play(
                                      pop_mp3);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.1,
                        width: SizeConfig.screenWidth * 0.15,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ShakeWidget(
                            key: shakeKey9,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.15,
                              width: SizeConfig.screenWidth * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(whee_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey9.currentState?.shake();
                                  audioPlayer.play(
                                      whee_mp3);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                          ),
                          Container(
                            height: SizeConfig.screenWidth * 0.15,
                            width: SizeConfig.screenWidth * 0.15,
                            child: Column(
                              children: [
                                Container(
                                  height: SizeConfig.screenWidth * 0.075,
                                  width: SizeConfig.screenWidth * 0.075,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(end_icon),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.transparent),
                                ),
                                Container(
                                  height: SizeConfig.screenWidth * 0.075,
                                  width: SizeConfig.screenWidth * 0.075,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(movie_icon),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.transparent),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => PlayVideo(video_url: s2Movie,)));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story2_openingScene, video_url: s2Movie, onPress: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => StoryAnimation2()));
                              },)));
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.1,
                          width: SizeConfig.screenWidth * 0.15,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(book_icon),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}