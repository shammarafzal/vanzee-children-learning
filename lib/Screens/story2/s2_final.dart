import 'package:flutter/material.dart';
import 'package:vanzee/Screens/story2/play_video2.dart';
import 'package:vanzee/Screens/story2/story_page2.dart';
import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import '../home.dart';

class SingleStoryComponentF2 extends StatefulWidget {
  const SingleStoryComponentF2({Key? key, required this.horizontalFlipPageTurnController}) : super(key: key);
  final horizontalFlipPageTurnController;
  @override
  State<SingleStoryComponentF2> createState() => _SingleStoryComponentF2State();
}

class _SingleStoryComponentF2State extends State<SingleStoryComponentF2> {
  final shakeKey1 = GlobalKey<ShakeWidgetState>();
  final shakeKey2 = GlobalKey<ShakeWidgetState>();
  final shakeKey3 = GlobalKey<ShakeWidgetState>();
  final shakeKey4 = GlobalKey<ShakeWidgetState>();
  final shakeKey5 = GlobalKey<ShakeWidgetState>();
  final shakeKey6 = GlobalKey<ShakeWidgetState>();
  final shakeKey7 = GlobalKey<ShakeWidgetState>();
  final shakeKey8 = GlobalKey<ShakeWidgetState>();
  final shakeKey9 = GlobalKey<ShakeWidgetState>();
  final shakeKey10 = GlobalKey<ShakeWidgetState>();
  final shakeKey11 = GlobalKey<ShakeWidgetState>();
  final shakeKey12 = GlobalKey<ShakeWidgetState>();

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///////// ROW 1 ////////
            Row(
              children: [
                //////// Col 1 /////////////
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
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s37.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey1.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/moo.mp3');
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
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s39.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey2.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/nei.mp3');
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
                        height: SizeConfig.screenHeight * 0.05,
                        width: SizeConfig.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Assets/return.png"),
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

                //////// Col 2 /////////////

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: SizeConfig.screenWidth * 0.1,
                          width: SizeConfig.screenWidth * 0.1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        ShakeWidget(
                          key: shakeKey3,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s36.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey4.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/baa.mp3');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.05,
                      width: SizeConfig.screenWidth * 0.2,
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                ),
                //////// Col 3 /////////////

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ShakeWidget(
                          key: shakeKey4,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s40.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey3.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/oin.mp3');
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        ShakeWidget(
                          key: shakeKey5,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s36.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey4.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/baa.mp3');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.05,
                      width: SizeConfig.screenWidth * 0.2,
                    ),
                  ],
                ),
              ],
            ),




            Row(
              children: [
                ///////// ROW 2 ////////
                Padding(
                  padding: const EdgeInsets.all(5.0),
                ),

                //////// Col 3 /////////////

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ShakeWidget(
                          key: shakeKey6,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s38.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey5.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/ark.mp3');
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        ShakeWidget(
                          key: shakeKey7,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s41.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey6.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/baa.mp3');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.05,
                      width: SizeConfig.screenWidth * 0.2,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                ),

                //////// Col 4 /////////////

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ShakeWidget(
                          key: shakeKey8,
                          shakeCount: 3,
                          shakeOffset: 10,
                          shakeDuration: Duration(milliseconds: 500),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.22,
                            width: SizeConfig.screenWidth * 0.22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("Assets/s3/s34.jpeg"),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent),
                            child: InkWell(
                              onTap: () {
                                shakeKey7.currentState?.shake();
                                audioPlayer.play(
                                    'http://assets.talktalesapps.com/s3/meo.mp3');
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        Container(
                          height: SizeConfig.screenWidth * 0.22,
                          width: SizeConfig.screenWidth * 0.22,
                          child: Column(
                            children: [
                              Container(
                                height: SizeConfig.screenWidth * 0.1,
                                width: SizeConfig.screenWidth * 0.1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("Assets/s1/s1f-e.png"),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent),
                              ),
                              Container(
                                height: SizeConfig.screenWidth * 0.1,
                                width: SizeConfig.screenWidth * 0.1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("Assets/s1/s1f-p.png"),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => PlayVideo2()));
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
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Container(
                        height: SizeConfig.screenHeight * 0.05,
                        width: SizeConfig.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("Assets/book-icon.png"),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.23, child: Container(color: Colors.yellow,),),
              ],
            )
          ],
        ));
    // return Container(
    //     color: Color(0xffA4C2F4),
    //     child:
    //     Row(
    //       children: [
    //       Column(
    //         children:[
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             RotatedBox(
    //               quarterTurns: 1,
    //               child: GestureDetector(
    //                 onTap: (){
    //                   Navigator.of(context).push(
    //                       MaterialPageRoute(builder: (context) => Home  ()));
    //                 },
    //                 child: Container(
    //                   margin: EdgeInsets.only(top: 30),
    //                   height: SizeConfig.screenHeight * 0.06,
    //                   width: SizeConfig.screenHeight * 0.08,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/return.png"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                 ),
    //               ),
    //             ),
    //
    //             ShakeWidget(
    //               key: shakeKey1,
    //               shakeCount: 3,
    //               shakeOffset: 10,
    //               shakeDuration: Duration(milliseconds: 500),
    //               child: RotatedBox(
    //                 quarterTurns: 1,
    //                 child: Container(
    //                   height: SizeConfig.screenHeight * 0.16,
    //                   width: SizeConfig.screenHeight * 0.13,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/s2/s26.jpeg"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       shakeKey1.currentState?.shake();
    //                       audioPlayer.play('http://assets.talktalesapps.com/s3/nei.mp3');
    //                     },
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //             ),
    //             ShakeWidget(
    //               key: shakeKey2,
    //               shakeCount: 3,
    //               shakeOffset: 10,
    //               shakeDuration: Duration(milliseconds: 500),
    //               child: RotatedBox(
    //                 quarterTurns: 1,
    //                 child:
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.16,
    //                   width: SizeConfig.screenHeight * 0.13,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/s2/s21.jpeg"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       shakeKey2.currentState?.shake();
    //                       audioPlayer.play('http://assets.talktalesapps.com/s2/uh-oh.mp3');
    //                     },
    //                   ),
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(5.0),
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             RotatedBox(
    //               quarterTurns: 1,
    //               child: Container(
    //                 margin: EdgeInsets.only(top: 30),
    //                 height: SizeConfig.screenHeight * 0.06,
    //                 width: SizeConfig.screenHeight * 0.1,
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(10),
    //                     color: Colors.transparent),
    //               ),
    //             ),
    //             SizedBox(width: 100,),
    //             ShakeWidget(
    //               key: shakeKey3,
    //               shakeCount: 3,
    //               shakeOffset: 10,
    //               shakeDuration: Duration(milliseconds: 500),
    //               child: RotatedBox(
    //                 quarterTurns: 1,
    //                 child: Container(
    //                   height: SizeConfig.screenHeight * 0.16,
    //                   width: SizeConfig.screenHeight * 0.14,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/s2/s27.jpeg"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       shakeKey3.currentState?.shake();
    //                       audioPlayer.play('http://assets.talktalesapps.com/s2/ow.mp3');
    //                     },
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //             ),
    //           ],
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(5.0),
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             RotatedBox(
    //               quarterTurns: 1,
    //               child: Container(
    //                 margin: EdgeInsets.only(top: 30),
    //                 height: SizeConfig.screenHeight * 0.06,
    //                 width: SizeConfig.screenHeight * 0.1,
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(10),
    //                     color: Colors.transparent),
    //               ),
    //             ),
    //             // SizedBox(width: 50,),
    //             ShakeWidget(
    //               key: shakeKey9,
    //               shakeCount: 3,
    //               shakeOffset: 10,
    //               shakeDuration: Duration(milliseconds: 500),
    //               child: RotatedBox(
    //                 quarterTurns: 1,
    //                 child: Container(
    //                   height: SizeConfig.screenHeight * 0.16,
    //                   width: SizeConfig.screenHeight * 0.14,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/s2/s24.jpeg"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       shakeKey5.currentState?.shake();
    //                       audioPlayer.play('http://assets.talktalesapps.com/s2/oh-man.mp3');
    //                     },
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //             ),
    //             RotatedBox(
    //               quarterTurns: 1,
    //               child:
    //               ShakeWidget(
    //                 key: shakeKey10,
    //                 shakeCount: 3,
    //                 shakeOffset: 10,
    //                 shakeDuration: Duration(milliseconds: 500),
    //                 child: Container(
    //                   height: SizeConfig.screenHeight * 0.16,
    //                   width: SizeConfig.screenHeight * 0.14,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/s2/s26.jpeg"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                   child: InkWell(
    //                     onTap: () {
    //                       shakeKey6.currentState?.shake();
    //                       audioPlayer.play('http://assets.talktalesapps.com/s2/bam.mp3');
    //                     },
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         ]
    //       ),
    //         SizedBox(height: 35,),
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 // RotatedBox(
    //                 //   quarterTurns: 1,
    //                 //   child: Container(
    //                 //     margin: EdgeInsets.only(top: 30),
    //                 //     height: SizeConfig.screenHeight * 0.06,
    //                 //     width: SizeConfig.screenHeight * 0.1,
    //                 //     decoration: BoxDecoration(
    //                 //         borderRadius: BorderRadius.circular(10),
    //                 //         color: Colors.transparent),
    //                 //   ),
    //                 // ),
    //                 ShakeWidget(
    //                   key: shakeKey7,
    //                   shakeCount: 3,
    //                   shakeOffset: 10,
    //                   shakeDuration: Duration(milliseconds: 500),
    //                   child: Container(
    //                     height: SizeConfig.screenHeight * 0.1,
    //                     width: SizeConfig.screenHeight * 0.1,
    //                     decoration: BoxDecoration(
    //                         image: DecorationImage(
    //                           fit: BoxFit.fill,
    //                           image: AssetImage("Assets/s1/s1fP.png"),
    //                         ),
    //                         borderRadius: BorderRadius.circular(10),
    //                         color: Colors.transparent),
    //                     child: InkWell(
    //                       onTap: () {
    //                         Navigator.of(context).push(
    //                             MaterialPageRoute(builder: (context) => PlayVideo2  ()));
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //                 ShakeWidget(
    //                   key: shakeKey5,
    //                   shakeCount: 3,
    //                   shakeOffset: 10,
    //                   shakeDuration: Duration(milliseconds: 500),
    //                   child: RotatedBox(
    //                     quarterTurns: 1,
    //                     child: Container(
    //                       height: SizeConfig.screenHeight * 0.16,
    //                       width: SizeConfig.screenHeight * 0.15,
    //                       decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             fit: BoxFit.fill,
    //                             image: AssetImage("Assets/s2/s29.jpeg"),
    //                           ),
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.transparent),
    //                       child: InkWell(
    //                         onTap: () {
    //                           shakeKey5.currentState?.shake();
    //                           audioPlayer.play('http://assets.talktalesapps.com/s2/oh-yeah.mp3');
    //                         },
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(5.0),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(5.0),
    //                 ),
    //                 RotatedBox(
    //                   quarterTurns: 1,
    //                   child:
    //                   ShakeWidget(
    //                     key: shakeKey6,
    //                     shakeCount: 3,
    //                     shakeOffset: 10,
    //                     shakeDuration: Duration(milliseconds: 500),
    //                     child: Container(
    //                       height: SizeConfig.screenHeight * 0.16,
    //                       width: SizeConfig.screenHeight * 0.15,
    //                       decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             fit: BoxFit.fill,
    //                             image: AssetImage("Assets/s2/s25.jpg"),
    //                           ),
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.transparent),
    //                       child: InkWell(
    //                         onTap: () {
    //                           shakeKey6.currentState?.shake();
    //                           audioPlayer.play('http://assets.talktalesapps.com/s2/bom.mp3');
    //                         },
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Container(
    //                   height: SizeConfig.screenHeight * 0.1,
    //                   width: SizeConfig.screenHeight * 0.1,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.fill,
    //                         image: AssetImage("Assets/s1/s1f-e.png"),
    //                       ),
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.transparent),
    //                 ),
    //                 ShakeWidget(
    //                   key: shakeKey11,
    //                   shakeCount: 3,
    //                   shakeOffset: 10,
    //                   shakeDuration: Duration(milliseconds: 500),
    //                   child: RotatedBox(
    //                     quarterTurns: 1,
    //                     child: Container(
    //                       height: SizeConfig.screenHeight * 0.16,
    //                       width: SizeConfig.screenHeight * 0.15,
    //                       decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             fit: BoxFit.fill,
    //                             image: AssetImage("Assets/s2/s28.jpg"),
    //                           ),
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.transparent),
    //                       child: InkWell(
    //                         onTap: () {
    //                           shakeKey11.currentState?.shake();
    //                           audioPlayer.play('http://assets.talktalesapps.com/s2/whe.mp3');
    //                         },
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(5.0),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(5.0),
    //                 ),
    //                 RotatedBox(
    //                   quarterTurns: 1,
    //                   child:
    //                   ShakeWidget(
    //                     key: shakeKey12,
    //                     shakeCount: 3,
    //                     shakeOffset: 10,
    //                     shakeDuration: Duration(milliseconds: 500),
    //                     child: Container(
    //                       height: SizeConfig.screenHeight * 0.16,
    //                       width: SizeConfig.screenHeight * 0.15,
    //                       decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             fit: BoxFit.fill,
    //                             image: AssetImage("Assets/s2/s23.jpeg"),
    //                           ),
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.transparent),
    //                       child: InkWell(
    //                         onTap: () {
    //                           shakeKey12.currentState?.shake();
    //                           audioPlayer.play('http://assets.talktalesapps.com/s2/pop.mp3');
    //                         },
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Row(
    //               children: [
    //                 RotatedBox(
    //                   quarterTurns: 1,
    //                   child: GestureDetector(
    //                     onTap: (){
    //                       Navigator.of(context).push(
    //                           MaterialPageRoute(builder: (context) => StoryPage2  ()));
    //                     },
    //                     child: Container(
    //                       margin: EdgeInsets.only(bottom: 20),
    //                       height: SizeConfig.screenHeight * 0.06,
    //                       width: SizeConfig.screenHeight * 0.1,
    //                       decoration: BoxDecoration(
    //                           image: DecorationImage(
    //                             fit: BoxFit.fill,
    //                             image: AssetImage("Assets/book-icon.png"),
    //                           ),
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: Colors.transparent),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ],
    //     ));
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
