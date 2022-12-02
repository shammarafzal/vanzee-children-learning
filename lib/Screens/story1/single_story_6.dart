import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../Settings/SizeConfig.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Components/animated_controller.dart';
import '../Components/video_player_widget.dart';

class SingleStoryComponent6 extends StatefulWidget {
  const SingleStoryComponent6({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponent6> createState() => _SingleStoryComponent6State();
}
class _SingleStoryComponent6State extends State<SingleStoryComponent6> {
  final shakeKey = GlobalKey<ShakeWidgetState>();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return RotatedBox(
    //   quarterTurns: 3,
    //   child: Container(
    //       color: Color(0xffA4C2F4),
    //       child:
    //       SafeArea(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Row(
    //               children: [
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.45,
    //                   width: SizeConfig.screenWidth * 0.15,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/baseImg-2.png"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       widget.horizontalFlipPageTurnController.animToLeftWidget();
    //                     },
    //                   ),
    //                 ),
    //
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.4,
    //                   width: SizeConfig.screenWidth * 0.6,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.black),
    //                   child: RotatedBox(
    //                     quarterTurns: 1,
    //                     child:VideoPlayerView(url: "Assets/s1/videos/ah-1.mp4", dataSourceType: DataSourceType.asset),
    //                   ),
    //                 ),
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.45,
    //                   width: SizeConfig.screenWidth * 0.25,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Color(0xffA4C2F4)),
    //                   child: RotatedBox(
    //                       quarterTurns: 1,
    //                       child: Center(child: GestureDetector(
    //                           onTap: (){
    //                             audioPlayer.play('http://assets.talktalesapps.com/s1/ah/ah.mp3');
    //                           },
    //                           child: Text('Ah!', style: TextStyle(fontSize: SizeConfig.screenWidth * 0.1, fontWeight: FontWeight.w900),)))
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             // Padding(
    //             //   padding: const EdgeInsets.all(15.0),
    //             // ),
    //             Row(
    //               children: [
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.4,
    //                   width: SizeConfig.screenWidth * 0.1,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/baseImg-3.png"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       widget.horizontalFlipPageTurnController.animToRightWidget();
    //                     },
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(5.0),
    //                 ),
    //
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.43,
    //                   width: SizeConfig.screenWidth * 0.35,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.black),
    //                   child: RotatedBox(
    //                     quarterTurns: 1,
    //                     child:VideoPlayerView(url: "Assets/s1/videos/ah-2.mp4", dataSourceType: DataSourceType.asset),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(5.0),
    //                 ),
    //                 RotatedBox(
    //                   quarterTurns: 1,
    //                   child:
    //                   ShakeWidget(
    //                     key: shakeKey,
    //                     shakeCount: 3,
    //                     shakeOffset: 10,
    //                     shakeDuration: Duration(milliseconds: 500),
    //                     child:  Container(
    //                       height: SizeConfig.screenHeight * 0.22,
    //                       width: SizeConfig.screenWidth * 0.43,
    //                       decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             fit: BoxFit.fill,
    //                             image: AssetImage("Assets/s1/ah.jpg"),
    //                           ),
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.transparent),
    //                       child: InkWell(
    //                         onTap: () {
    //                           shakeKey.currentState?.shake();
    //                           audioPlayer.play('http://assets.talktalesapps.com/s1/ah/ah.mp3');
    //                         },
    //                       ),
    //                     ),
    //
    //                   ),
    //                 )
    //               ],
    //             )
    //           ],
    //         ),
    //       )),
    // );

    return Container(
        color: Color(0xffA4C2F4),
        height: SizeConfig.screenHeight * 1,
        width: SizeConfig.screenWidth * 1,
        child: Row(
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
                    child: Center(
                        child: GestureDetector(
                            onTap: () {
                              audioPlayer.play('http://assets.talktalesapps.com/s1/ah/ah.mp3');
                            },
                            child: Text(
                              "Ah!",
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.1,
                                  fontWeight: FontWeight.w900),
                            ))),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * 0.33,
                    width: SizeConfig.screenWidth * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child:VideoPlayerView(url: "Assets/s1/videos/ah-1.mp4", dataSourceType: DataSourceType.asset),
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
                        widget.horizontalFlipPageTurnController
                            .animToLeftWidget();
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
                    child: Container(
                      margin:
                      EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
                      height: SizeConfig.screenHeight * 0.33,
                      width: SizeConfig.screenWidth * 0.33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("Assets/s1/ah.jpg"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent),
                      child: InkWell(
                        onTap: () {
                          shakeKey.currentState?.shake();
                          audioPlayer.play('http://assets.talktalesapps.com/s1/ah/ah.mp3');
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
                    child:VideoPlayerView(url: "Assets/s1/videos/ah-2.mp4", dataSourceType: DataSourceType.asset),
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
                        widget.horizontalFlipPageTurnController
                            .animToRightWidget();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ));

  }
}