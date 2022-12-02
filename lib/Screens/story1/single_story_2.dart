import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import '../Components/animated_controller.dart';
import '../Components/video_player_widget.dart';

class SingleStoryComponent2 extends StatefulWidget {
  const SingleStoryComponent2({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponent2> createState() => _SingleStoryComponent2State();
}

class _SingleStoryComponent2State extends State<SingleStoryComponent2> {
  final shakeKey = GlobalKey<ShakeWidgetState>();
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
        height: SizeConfig.screenHeight * 1,
        width: SizeConfig.screenWidth * 1,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.4,
                    child: Center(child: GestureDetector(
                        onTap: (){
                          audioPlayer.play('http://assets.talktalesapps.com/s1/mmm/mmm.mp3');
                        },
                        child: Text("Mmm!", style: TextStyle(fontSize: SizeConfig.screenWidth * 0.1, fontWeight: FontWeight.w900),))),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: VideoPlayerView(url: "Assets/s1/videos/mmm-1.mp4", dataSourceType: DataSourceType.asset),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.1,
                    width: SizeConfig.screenWidth * 0.33,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Assets/arrow_left.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: InkWell(
                      onTap: () {
                        widget.horizontalFlipPageTurnController.animToLeftWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShakeWidget(
                    key: shakeKey,
                    shakeCount: 3,
                    shakeOffset: 10,
                    shakeDuration: Duration(milliseconds: 500),
                    child:  Container(
                      margin: EdgeInsets.only(top:SizeConfig.screenHeight * 0.05 ),
                      height: SizeConfig.screenHeight * 0.33,
                      width: SizeConfig.screenWidth * 0.33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("Assets/s1/mmm.jpg"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          shakeKey.currentState?.shake();
                          audioPlayer.play('http://assets.talktalesapps.com/s1/mmm/mmm.mp3');
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: VideoPlayerView(url: "Assets/s1/videos/mmm-2.mp4", dataSourceType: DataSourceType.asset),
                  ),


                  Container(
                    height: SizeConfig.screenHeight * 0.1,
                    width: SizeConfig.screenWidth * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Assets/arrow_right.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: InkWell(
                      onTap: () {
                        widget.horizontalFlipPageTurnController.animToRightWidget();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
