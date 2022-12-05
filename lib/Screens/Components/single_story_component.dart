import 'package:flutter/material.dart';
import 'package:vanzee/Constants/constant.dart';
import 'package:vanzee/Screens/Components/story_page.dart';
import 'package:vanzee/Screens/story2/story_animation2.dart';
import 'package:video_player/video_player.dart';
import '../../Settings/SizeConfig.dart';
import 'package:audioplayers/audioplayers.dart';
import '../story1/story_animation.dart';
import '../story3/story_animation3.dart';
import 'animated_controller.dart';
import 'video_player_widget.dart';

class StoryComponent extends StatefulWidget {
  const StoryComponent({Key? key,
    required this.horizontalFlipPageTurnController,
    required this.word,
    required this.vid1,
    required this.vid2,
    required this.mp3,
    required this.img,
    this.storyNo = 1,
    this.isfirst = false
  }) : super(key: key);
  final horizontalFlipPageTurnController;
  final word;
  final vid1;
  final vid2;
  final mp3;
  final img;
  final isfirst;
  final storyNo;
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: GestureDetector(
                      onTap: () {
                        if(widget.storyNo == 1){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story1_openingScene, video_url: s1Movie, onPress: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => StoryAnimation()));
                              },)));
                        }
                        else if(widget.storyNo == 2) {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story2_openingScene, video_url: s2Movie, onPress: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => StoryAnimation2()));
                              },)));
                        }
                        else {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => StoryPage(opening_scene: story3_openingScene, video_url: s3movie, onPress: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => StoryAnimation3()));
                              },)));
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30,left: 20),
                        height: SizeConfig.screenHeight * 0.1,
                        width: SizeConfig.screenWidth * 0.1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(book_icon),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.27,
                    width: SizeConfig.screenWidth * 0.43,
                    child: Center(child: GestureDetector(
                        onTap: (){
                          audioPlayer.play(AssetSource(widget.mp3));
                        },
                        child: Text(widget.word, style: TextStyle(fontSize: SizeConfig.screenHeight * 0.07, fontWeight: FontWeight.w800),))),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.45,
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
                        widget.isfirst ? Navigator.pop(context) : widget.horizontalFlipPageTurnController.animToLeftWidget();
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
                          audioPlayer.play(AssetSource(widget.mp3));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.45,
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