import 'package:flutter/material.dart';
import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleStoryComponent36 extends StatefulWidget {
  const SingleStoryComponent36({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponent36> createState() => _SingleStoryComponent36State();
}

class _SingleStoryComponent36State extends State<SingleStoryComponent36> {
  final shakeKey = GlobalKey<ShakeWidgetState>();

  AudioPlayer audioPlayer = AudioPlayer();
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'B4OKo92pE-w',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

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
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("Assets/baseImg.png"),
            ),
          ),
          child:
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: SizeConfig.screenHeight * 0.43,
                      width: SizeConfig.screenHeight * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          widget.horizontalFlipPageTurnController.animToLeftWidget();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.44,
                      width: SizeConfig.screenHeight * 0.24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child:YoutubePlayer(
                          controller: _controller1,
                          showVideoProgressIndicator: true,
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.2,
                      width: SizeConfig.screenHeight * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA4C2F4)),
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Text('Meow!', style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900),)
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
                      width: SizeConfig.screenHeight * 0.05,
                      decoration: BoxDecoration(
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
                      height: SizeConfig.screenHeight * 0.41,
                      width: SizeConfig.screenHeight * 0.17,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child:YoutubePlayer(
                          controller: _controller,
                          showVideoProgressIndicator: true,
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
                        key: shakeKey,
                        shakeCount: 3,
                        shakeOffset: 10,
                        shakeDuration: Duration(milliseconds: 500),
                        child:  Container(
                          height: SizeConfig.screenHeight * 0.2,
                          width: SizeConfig.screenHeight * 0.3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("Assets/s3/s34.jpeg"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: InkWell(
                            onTap: () {
                              shakeKey.currentState?.shake();
                              audioPlayer.play('http://assets.talktalesapps.com/s3/meo.mp3');
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
