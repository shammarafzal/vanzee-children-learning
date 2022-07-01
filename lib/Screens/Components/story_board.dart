import 'package:flutter/material.dart';

import '../../Settings/SizeConfig.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

class StoryBoard extends StatefulWidget {
  StoryBoard({Key? key}) : super(key: key);

  @override
  State<StoryBoard> createState() => _StoryBoardState();
}

class _StoryBoardState extends State<StoryBoard> {
  final shakeKey = GlobalKey<ShakeWidgetState>();

  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);

  bool isPlaying = false;

  String currentSong = "";

  IconData btnIcon = Icons.play_arrow;

  Duration duration = Duration();

  Duration position = Duration();

  void playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      audioPlayer.pause();
      int result = await audioPlayer.play(url);
      if (result == 1) {
        setState(() {
          currentSong = url;
        });
      }
    } else if (!isPlaying) {
      int result = await audioPlayer.play(url);
      if (result == 1) {
        setState(() {
          isPlaying = true;
        });
      }
    }

    // Slider configuration

    audioPlayer.onDurationChanged.listen((event) {
      if (mounted) {
        setState(() {
          duration = event;
        });
      }
    });

    audioPlayer.onAudioPositionChanged.listen((event) {
      if (mounted) {
        setState(() {
          position = event;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        title: Text('Story Board'),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              shakeKey.currentState?.shake();
              playMusic('http://assets.talktalesapps.com/Oh.mp3');
            },
            child: ShakeWidget(
              // 4. pass the GlobalKey as an argument
              key: shakeKey,
              // 5. configure the animation parameters
              shakeCount: 3,
              shakeOffset: 10,
              shakeDuration: Duration(milliseconds: 500),
              // 6. Add the child widget that will be animated
              child: Container(
                width: SizeConfig.screenWidth * 0.4,
                height: SizeConfig.screenHeight * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'http://assets.talktalesapps.com/sbp1m1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   height: 200,
          //   child: MusicPlayer(
          //     media: 'http://assets.talktalesapps.com/Oh.mp3',
          //   ),
          // ),
        ],
      ),
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
    // 1. return an AnimatedBuilder
    return AnimatedBuilder(
      // 2. pass our custom animation as an argument
      animation: animationController,
      // 3. optimization: pass the given child as an argument
      child: widget.child,
      builder: (context, child) {
        final sineValue =
            sin(widget.shakeCount * 2 * pi * animationController.value);
        return Transform.translate(
          // 4. apply a translation as a function of the animation value
          offset: Offset(sineValue * widget.shakeOffset, 0),
          // 5. use the child widget
          child: child,
        );
      },
    );
  }
}

// class MusicPlayer extends StatefulWidget {
//   MusicPlayer({Key? key, required this.media}) : super(key: key);
//   final media;

//   @override
//   _MusicPlayerState createState() => _MusicPlayerState();
// }

// class _MusicPlayerState extends State<MusicPlayer> {
//   // AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
//   bool isPlaying = false;
//   String currentSong = "";
//   IconData btnIcon = Icons.play_arrow;
//   Duration duration = Duration();
//   Duration position = Duration();

//   void playMusic(String url) async {
//     if (isPlaying && currentSong != url) {
//       audioPlayer.pause();
//       int result = await audioPlayer.play(url);
//       if (result == 1) {
//         setState(() {
//           currentSong = url;
//         });
//       }
//     } else if (!isPlaying) {
//       int result = await audioPlayer.play(url);
//       if (result == 1) {
//         setState(() {
//           isPlaying = true;
//         });
//       }
//     }

//     // Slider configuration

//     audioPlayer.onDurationChanged.listen((event) {
//       if (mounted) {
//         setState(() {
//           duration = event;
//         });
//       }
//     });

//     audioPlayer.onAudioPositionChanged.listen((event) {
//       if (mounted) {
//         setState(() {
//           position = event;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white12,
//       shape: RoundedRectangleBorder(
//         side: BorderSide(
//           color: Colors.white70,
//         ),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       margin: EdgeInsets.all(20.0),
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   width: 300,
//                   height: 100,
//                   child: Slider(
//                     value: 0,
//                     min: 0.0,
//                     max: 1.0,
//                     onChanged: (value) {},
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: IconButton(
//                   onPressed: () {
//                     playMusic(widget.media);

//                     if (isPlaying) {
//                       audioPlayer.pause();
//                       setState(() {
//                         btnIcon = Icons.play_arrow;
//                         isPlaying = false;
//                       });
//                     } else {
//                       audioPlayer.resume();
//                       setState(() {
//                         btnIcon = Icons.pause;
//                         isPlaying = true;
//                       });
//                     }
//                   },
//                   icon: Icon(
//                     btnIcon,
//                     size: 40.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
