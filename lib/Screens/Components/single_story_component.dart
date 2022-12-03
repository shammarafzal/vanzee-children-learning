import 'package:flutter/material.dart';
import 'package:vanzee/Constants/constant.dart';
import 'package:video_player/video_player.dart';
import '../../Settings/SizeConfig.dart';
import 'package:audioplayers/audioplayers.dart';
import 'animated_controller.dart';
import 'video_player_widget.dart';

class StoryComponent extends StatefulWidget {
  const StoryComponent({Key? key, required this.horizontalFlipPageTurnController, required this.word, required this.vid1, required this.vid2, required this.mp3, required this.img}) : super(key: key);
  final horizontalFlipPageTurnController;
  final word;
  final vid1;
  final vid2;
  final mp3;
  final img;
  @override
  State<StoryComponent> createState() => _StoryComponentState();
}

class _StoryComponentState extends State<StoryComponent> {
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
                          audioPlayer.play(widget.mp3);
                        },
                        child: Text(widget.word, style: TextStyle(fontSize: SizeConfig.screenHeight * 0.08, fontWeight: FontWeight.w900),))),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: VideoPlayerView(url: widget.vid1, dataSourceType: DataSourceType.asset, newKey: UniqueKey(),),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.1,
                    width: SizeConfig.screenWidth * 0.33,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(left_arrow),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(width: 2, height: SizeConfig.screenHeight, color: Colors.white,),
            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.49,
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
                            image: AssetImage(widget.img),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          shakeKey.currentState?.shake();
                          audioPlayer.play(widget.mp3);
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
                    child: VideoPlayerView(url: widget.vid2, dataSourceType: DataSourceType.asset, newKey: UniqueKey(),),
                  ),


                  Container(
                    height: SizeConfig.screenHeight * 0.1,
                    width: SizeConfig.screenWidth * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(right_arrow),
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