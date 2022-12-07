import 'package:flutter/material.dart';
import 'package:vanzee/Constants/constant.dart';
import '../../Settings/SizeConfig.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Components/animated_controller.dart';
import '../Components/play_video.dart';
import '../Components/story_page.dart';
import '../bottom_bar_screens/home.dart';
import 'story_animation3.dart';

class SingleStoryComponentF3 extends StatefulWidget {
  const SingleStoryComponentF3(
      {Key? key, required this.horizontalFlipPageTurnController})
      : super(key: key);
  final horizontalFlipPageTurnController;

  @override
  State<SingleStoryComponentF3> createState() => _SingleStoryComponentF3State();
}

class _SingleStoryComponentF3State extends State<SingleStoryComponentF3> {
  final shakeKey1 = GlobalKey<ShakeWidgetState>();
  final shakeKey2 = GlobalKey<ShakeWidgetState>();
  final shakeKey3 = GlobalKey<ShakeWidgetState>();
  final shakeKey4 = GlobalKey<ShakeWidgetState>();
  final shakeKey5 = GlobalKey<ShakeWidgetState>();
  final shakeKey6 = GlobalKey<ShakeWidgetState>();
  final shakeKey7 = GlobalKey<ShakeWidgetState>();
  final shakeKey8 = GlobalKey<ShakeWidgetState>();

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
              width: SizeConfig.screenWidth * 0.47,
              child: Row(
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(moo_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey1.currentState?.shake();
                                  audioPlayer.play(AssetSource(moo_mp3));
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(nei_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey2.currentState?.shake();
                                  audioPlayer.play(AssetSource(nei_mp3));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.horizontalFlipPageTurnController.animToLeftWidget();
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.1,
                          width: SizeConfig.screenWidth * 0.185,
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
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(oin_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey3.currentState?.shake();
                                  audioPlayer.play(AssetSource(oin_mp3));
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(bak_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey4.currentState?.shake();
                                  audioPlayer.play(AssetSource(bak_mp3));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.1,
                        width: SizeConfig.screenWidth * 0.185,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 5))
                ],
              ),
            ),
            Container(
              width: 2,
              height: SizeConfig.screenHeight,
              color: Colors.white,
            ),

            Container(
              width: SizeConfig.screenWidth * 0.465,
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ark_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey5.currentState?.shake();
                                  audioPlayer.play(AssetSource(ark_mp3));
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(baa_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey6.currentState?.shake();
                                  audioPlayer.play(AssetSource(baa_mp3));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.1,
                        width: SizeConfig.screenWidth * 0.185,
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
                              height: SizeConfig.screenWidth * 0.185,
                              width: SizeConfig.screenWidth * 0.185,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(meo_img),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey7.currentState?.shake();
                                  audioPlayer.play(AssetSource(meo_mp3));
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                          ),
                          Container(
                            height: SizeConfig.screenWidth * 0.185,
                            width: SizeConfig.screenWidth * 0.185,
                            child: Column(
                              children: [
                                Container(
                                  height: SizeConfig.screenWidth * 0.09,
                                  width: SizeConfig.screenWidth * 0.09,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(end_icon),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.transparent),
                                ),
                                Container(
                                  height: SizeConfig.screenWidth * 0.09,
                                  width: SizeConfig.screenWidth * 0.09,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(movie_icon),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.transparent),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => PlayVideo(
                                                    video_url: s3movie,
                                                  )));
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => StoryPage(
                                    opening_scene: story3_openingScene,
                                    video_url: s3movie,
                                    onPress: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoryAnimation3()));
                                    },
                                  )));
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.1,
                          width: SizeConfig.screenWidth * 0.185,
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
