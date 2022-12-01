import 'package:flutter/material.dart';
import 'package:vanzee/Screens/home.dart';
import 'package:vanzee/Screens/story1/play_video1.dart';
import 'package:vanzee/Screens/story1/story_page.dart';
import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

import '../story.dart';

class SingleStoryComponentF extends StatefulWidget {
  const SingleStoryComponentF({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponentF> createState() => _SingleStoryComponentFState();
}

class _SingleStoryComponentFState extends State<SingleStoryComponentF> {
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
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
          color: Color(0xffA4C2F4),
        // padding: EdgeInsets.only(top: 10),
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       fit: BoxFit.fill,
        //       image: AssetImage("Assets/s1/s1f.png"),
        //     ),
        //   ),
          child:
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home  ()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          height: SizeConfig.screenHeight * 0.06,
                          width: SizeConfig.screenHeight * 0.08,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/return.png"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                        ),
                      ),
                    ),
                    ShakeWidget(
                      key: shakeKey1,
                      shakeCount: 3,
                      shakeOffset: 10,
                      shakeDuration: Duration(milliseconds: 500),

                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenHeight * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/s1/ah.jpg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey1.currentState?.shake();

                              audioPlayer.play('http://assets.talktalesapps.com/s1/ah/ah.mp3');
                            },
                          ),
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
                      child: RotatedBox(
                        quarterTurns: 1,
                        child:
                        Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenHeight * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Assets/s1/oh.jpg"),
                            ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey2.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s1/oh/oh.mp3');
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.all(5.0),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        height: SizeConfig.screenHeight * 0.06,
                        width: SizeConfig.screenHeight * 0.1,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                      ),
                    ),
                    ShakeWidget(
                      key: shakeKey3,
                      shakeCount: 3,
                      shakeOffset: 10,
                      shakeDuration: Duration(milliseconds: 500),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenHeight * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/s1/ew.jpg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey3.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s1/ew/ew.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(5.0),
                    // ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child:
                      ShakeWidget(
                        key: shakeKey4,
                        shakeCount: 3,
                        shakeOffset: 10,
                        shakeDuration: Duration(milliseconds: 500),
                        child: Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenHeight * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Assets/s1/mmm.jpg"),
                            ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey4.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s1/mmm/mmm.mp3');
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 80),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    RotatedBox(
                      quarterTurns: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        height: SizeConfig.screenHeight * 0.06,
                        width: SizeConfig.screenHeight * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                      ),
                    ),
                    ShakeWidget(
                      key: shakeKey5,
                      shakeCount: 3,
                      shakeOffset: 10,
                      shakeDuration: Duration(milliseconds: 500),
                      child: RotatedBox(
                        quarterTurns: 1,

                        child: Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenHeight * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/s1/eh.jpeg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey5.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s1/eh/eh.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child:
                      ShakeWidget(
                        key: shakeKey6,
                        shakeCount: 3,
                        shakeOffset: 10,
                        shakeDuration: Duration(milliseconds: 500),
                        child: Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenHeight * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/s1/eee.jpg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey6.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s1/eee/eee.mp3');
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => StoryPage  ()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: SizeConfig.screenHeight * 0.06,
                          width: SizeConfig.screenHeight * 0.1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/book-icon.png"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                        ),
                      ),
                    ),
                    ShakeWidget(
                      key: shakeKey7,
                      shakeCount: 3,
                      shakeOffset: 10,
                      shakeDuration: Duration(milliseconds: 500),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.15,
                        width: SizeConfig.screenHeight * 0.17,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Assets/s1/s1fP.png"),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => PlayVideo1  ()));
                          },
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.03),
                      height: SizeConfig.screenHeight * 0.15,
                      width: SizeConfig.screenHeight * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("Assets/s1/s1f-e.png"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                    ),
                    // Container(
                    //   height: SizeConfig.screenHeight * 0.2,
                    //   width: SizeConfig.screenHeight * 0.2,
                    //   decoration: BoxDecoration(
                    //
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.transparent),
                    // ),


                  ],
                ),

              ],
            ),
          )),
    );
  }
}
abstract class AnimationControllerState<T extends StatefulWidget>
    extends State<T> with SingleTickerProviderStateMixin {
  AnimationControllerState(this.animationDuration);
  final Duration animationDuration;
  late final animationController =
  AnimationController(vsync: this, duration: animationDuration);

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
class ShakeWidget extends StatefulWidget {
  const ShakeWidget({
    Key? key,
    required this.child,
    required this.shakeOffset,
    this.shakeCount = 3,
    this.shakeDuration = const Duration(milliseconds: 400),
  }) : super(key: key);
  final Widget child;
  final double shakeOffset;
  final int shakeCount;
  final Duration shakeDuration;

  @override
  ShakeWidgetState createState() => ShakeWidgetState(shakeDuration);
}

class ShakeWidgetState extends AnimationControllerState<ShakeWidget> {
  ShakeWidgetState(Duration duration) : super(duration);

  @override
  void initState() {
    super.initState();
    animationController.addStatusListener(_updateStatus);
  }

  @override
  void dispose() {
    animationController.removeStatusListener(_updateStatus);
    super.dispose();
  }

  void _updateStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      animationController.reset();
    }
  }

  void shake() {
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (context, child) {
        final sineValue =
        sin(widget.shakeCount * 2 * pi * animationController.value);
        return Transform.translate(
          offset: Offset(sineValue * widget.shakeOffset, 0),
          child: child,
        );
      },
    );
  }
}
