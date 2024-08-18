
import 'package:audioplayers/audioplayers.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class IntroVideo extends StatefulWidget {

  const IntroVideo({Key? key}) : super(key: key);

  @override
  _IntroVideoState createState() => _IntroVideoState();
}

class _IntroVideoState extends State<IntroVideo> {
  bool _loading = false;
  // late AppDio _dio;
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  // int _selected = 0;
  final player = AudioPlayer();
  bool _isPlaying = false;

  String caseManagerVideoUrl = "https://noteitnipit.co.uk/videos/case-manager-tutorial.mp4";
  String caseReporterVideoUrl = "https://noteitnipit.co.uk/videos/case-reporter-tutorial.mp4";

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    _controller = VideoPlayerController.network(
     caseReporterVideoUrl,
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Video"),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blue,
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              VideoPlayer(_controller),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_controller.value.isPlaying) {
                                        _controller.pause();
                                      } else {
                                        _controller.play();
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _controller.value.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                                    size: 30.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          VideoProgressIndicator(_controller, allowScrubbing: true),
                        ],
                      ),
                    ),
                  ),
                  // SizeBoxHeight8(),
                  // InkWell(
                  //   onTap: () {
                  //     setState(() {
                  //       // _selected = 1;
                  //     });
                  //
                  //     _isPlaying = !_isPlaying;
                  //     if (_isPlaying == true) {
                  //       print('playing');
                  //       _playVoice(widget.formData['virtual_assistant'], 'clear.mp3');
                  //     } else {
                  //       print('not playing');
                  //       _stopVoice();
                  //       // _selected = 0;
                  //     }
                  //   },
                  //   // child: SelectAssistant.getAssistantCard(
                  //   //   id: widget.formData['virtual_assistant'],
                  //   //   color: _selected == 1 ? AppColors.green400 : Colors.white,
                  //   // ),
                  // ),
                  // SizeBoxHeight8(),
                  // ListTile(
                  //   title: AppText(
                  //     "Got it?",
                  //     color: Colors.black,
                  //   ),
                  //   subtitle: AppText(
                  //     "Press here to continue to home page ",
                  //     color: AppTheme.PrimaryColorVariant,
                  //     size: 16,
                  //   ),
                  //   trailing: RoundedButton(
                  //     btnSize: 40.0,
                  //     onPressed: () {
                  //       if (widget.formData['level'] == 9001) {
                  //         _signUpAnonymous();
                  //       } else {
                  //         _signUp();
                  //       }
                  //     },
                  //   ),
                  // ),
                  // SizeBoxHeight8(),
                  // ListTile(
                  //   title: AppText(
                  //     "Still not clear?",
                  //     color: Colors.black,
                  //   ),
                  //   subtitle: AppText(
                  //     "Press here to submit an email to the admin team",
                  //     color: AppTheme.PrimaryColorVariant,
                  //     size: 16,
                  //   ),
                  //   trailing: RoundedButton(
                  //     btnSize: 40.0,
                  //     onPressed: () {
                  //       _sendMail();
                  //     },
                  //   ),
                  // ),
                  // SizeBoxHeight8(),
                  // ListTile(
                  //   title: AppText(
                  //     "Skip and continue to home",
                  //     color: AppTheme.PrimaryColorVariant,
                  //   ),
                  //   trailing: RoundedButton(
                  //     btnSize: 40.0,
                  //     onPressed: () {
                  //       if (widget.formData['level'] == 9001) {
                  //         _signUpAnonymous();
                  //       } else {
                  //         _signUp();
                  //       }
                  //     },
                  //   ),
                  // ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }


  // _playVoice(int id, String audio) async {
  //   var duration = await player.setAsset(
  //     AppAudios.getAudioFile(id, audio),
  //   );
  //   print(duration);
  //   await player.play();
  // }

  // _stopVoice() async {
  //   await player.stop();
  // }

  // _sendMail() async {
  //   // Android and iOS
  //   const uri = 'mailto:info@notablehr.co.uk';
  //   if (await canLaunch(uri)) {
  //     await launch(uri);
  //   } else {
  //     throw 'Could not launch $uri';
  //   }
  // }
}