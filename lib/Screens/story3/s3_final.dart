import 'package:flutter/material.dart';
import 'package:vanzee/Screens/story1/play_video1.dart';
import 'package:vanzee/Screens/story3/play_vide03.dart';
import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

class SingleStoryComponentF3 extends StatefulWidget {
  const SingleStoryComponentF3({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
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
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
          color: Color(0xffA4C2F4),
          child:
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShakeWidget(
                          key: shakeKey1,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Container(
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenHeight * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s3/s39.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey1.currentState?.shake();
                                  audioPlayer.play('http://assets.talktalesapps.com/s3/nei.mp3');
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
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenHeight * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s3/s37.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey2.currentState?.shake();
                                  audioPlayer.play('http://assets.talktalesapps.com/s3/moo.mp3');
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShakeWidget(
                          key: shakeKey3,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Container(
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenHeight * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s3/s36.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey3.currentState?.shake();
                                  audioPlayer.play('http://assets.talktalesapps.com/s3/baa.mp3');
                                },
                              ),
                            ),
                          ),
                        ),
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
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenHeight * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s3/s40.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey4.currentState?.shake();
                                  audioPlayer.play('http://assets.talktalesapps.com/s3/oin.mp3');
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShakeWidget(
                          key: shakeKey5,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Container(
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenHeight * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s3/s41.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey5.currentState?.shake();
                                  audioPlayer.play('http://assets.talktalesapps.com/s3/baa.mp3');
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
                              height: SizeConfig.screenWidth * 0.4,
                              width: SizeConfig.screenHeight * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s3/s38.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: InkWell(
                                onTap: () {
                                  shakeKey6.currentState?.shake();
                                  audioPlayer.play('http://assets.talktalesapps.com/s3/ark.mp3');
                                },
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // height: SizeConfig.screenWidth * 0.2,
                        // width: SizeConfig.screenHeight * 0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ShakeWidget(
                              key: shakeKey7,
                              shakeCount: 3,
                              shakeOffset: 10,
                              shakeDuration: Duration(milliseconds: 500),
                              child: Container(
                                height: SizeConfig.screenHeight * 0.12,
                                width: SizeConfig.screenHeight * 0.08,
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
                                        MaterialPageRoute(builder: (context) => PlayVideo3  ()));
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: SizeConfig.screenHeight * 0.12,
                              width: SizeConfig.screenHeight * 0.08,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("Assets/s1/s1f-e.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                            ),
                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child:
                        ShakeWidget(
                          key: shakeKey8,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.4,
                            width: SizeConfig.screenHeight * 0.18,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s34.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey8.currentState?.shake();
                                audioPlayer.play('http://assets.talktalesapps.com/s3/meo.mp3');
                              },
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
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
