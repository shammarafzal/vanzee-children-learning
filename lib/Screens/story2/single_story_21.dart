import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import '../video_player_widget.dart';

class SingleStoryComponent21 extends StatefulWidget {
  const SingleStoryComponent21({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponent21> createState() => _SingleStoryComponent21State();
}

class _SingleStoryComponent21State extends State<SingleStoryComponent21> {
  final shakeKey = GlobalKey<ShakeWidgetState>();
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
              children: [
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenHeight * 0.45,
                      width: SizeConfig.screenWidth * 0.15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("Assets/baseImg-2.png"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),

                    Container(
                      height: SizeConfig.screenHeight * 0.42,
                      width: SizeConfig.screenWidth * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child:VideoPlayerView(url: "Assets/s2/videos/uh-1.mp4", dataSourceType: DataSourceType.asset),
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.2,
                      width: SizeConfig.screenWidth * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA4C2F4)),
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Text("Uh Oh!", style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900),)
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                ),
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenHeight * 0.4,
                      width: SizeConfig.screenWidth * 0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("Assets/baseImg-3.png"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          widget.horizontalFlipPageTurnController.animToRightWidget();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    Container(
                      height: SizeConfig.screenHeight * 0.4,
                      width: SizeConfig.screenWidth * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: RotatedBox(
                        quarterTurns: 1,
                       child:VideoPlayerView(url: "Assets/s2/videos/uh-2.mp4", dataSourceType: DataSourceType.asset),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child:
                      ShakeWidget(
                        key: shakeKey,
                        shakeCount: 3,
                        shakeOffset: 10,
                        shakeDuration: Duration(milliseconds: 500),
                        child:  Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenWidth * 0.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/s2/s21.jpeg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s2/uh-oh.mp3');
                            },
                          ),
                        ),

                      ),
                    )
                  ],
                )
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
