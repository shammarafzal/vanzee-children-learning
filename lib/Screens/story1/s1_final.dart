import 'package:flutter/material.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Screens/Components/play_video.dart';
import 'package:vanzee/Screens/Components/story_page.dart';
import '../../Constants/constant.dart';
import '../../Settings/SizeConfig.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Components/animated_controller.dart';
import 'story_animation.dart';

class Single1Final extends StatefulWidget {
  const Single1Final({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<Single1Final> createState() => _Single1FinalState();
}

class _Single1FinalState extends State<Single1Final> {
  final shakeKey1 = GlobalKey<ShakeWidgetState>();
  final shakeKey2 = GlobalKey<ShakeWidgetState>();
  final shakeKey3 = GlobalKey<ShakeWidgetState>();
  final shakeKey4 = GlobalKey<ShakeWidgetState>();
  final shakeKey5 = GlobalKey<ShakeWidgetState>();
  final shakeKey6 = GlobalKey<ShakeWidgetState>();
  final shakeKey7 = GlobalKey<ShakeWidgetState>();

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
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          children: [
            ///////// ROW 1 ////////
            Container(
              width: SizeConfig.screenWidth * 0.47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          ShakeWidget(
                            key: shakeKey1,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(oh_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey1.currentState?.shake();
                                  audioPlayer.play(AssetSource(oh_mp3));
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
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ah_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey2.currentState?.shake();
                                  audioPlayer.play(AssetSource(ah_mp3)
                                      );
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
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(mmm_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey3.currentState?.shake();
                                  audioPlayer.play(AssetSource(mmm_mp3)
                                      );
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
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ew_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey4.currentState?.shake();
                                  audioPlayer.play(AssetSource(ew_mp3)
                                      );
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
                ],
              ),
            ),
            Container(width: 2, height: SizeConfig.screenHeight, color: Colors.white,),
            Container(
              width: SizeConfig.screenWidth * 0.47,
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
                            key: shakeKey5,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(eee_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey5.currentState?.shake();
                                  audioPlayer.play(AssetSource(eee_mp3)
                                      );
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
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(eh_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey6.currentState?.shake();
                                  audioPlayer.play(AssetSource(eh_mp3)
                                      );
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
                            key: shakeKey7,
                            shakeCount: 3,
                            shakeOffset: 10,
                            shakeDuration: Duration(milliseconds: 500),
                            child: Container(
                              height: SizeConfig.screenWidth * 0.19,
                              width: SizeConfig.screenWidth * 0.2,
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
                                          builder: (context) => PlayVideo(video_url: s1Movie,)));
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
                              MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story1_openingScene, video_url: s1Movie, onPress: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => StoryAnimation()));
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