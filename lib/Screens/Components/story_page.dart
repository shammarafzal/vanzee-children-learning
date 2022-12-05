import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Screens/Components/play_video.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import 'package:flutter_gif/flutter_gif.dart';

import '../../Constants/constant.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key, required this.opening_scene, required this.video_url,required this.onPress }) : super(key: key);
  final opening_scene, video_url;
  final GestureTapCallback onPress;
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage>with TickerProviderStateMixin {
  late FlutterGifController controller1;
  final Uri _url1 = Uri.parse(about_book);
  Future<void> _aboutapp() async {
    if (!await launchUrl(_url1)) {
      throw 'Could not launch $_url1';
    }
  }
  @override
  void initState() {
    controller1 = FlutterGifController(vsync: this);
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      controller1.repeat(
        min: 0,
        max: 40,
        period: const Duration(milliseconds: 500),
      );
    });
    super.initState();
  }
  @override
  void dispose(){
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Container(
        height: SizeConfig.screenHeight * 1,
        width: SizeConfig.screenWidth * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.opening_scene),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () => {_aboutapp()},
              ),
            ),
            GestureDetector(
              onTap: widget.onPress,
              child: Container(
                margin: EdgeInsets.only(left: SizeConfig.screenWidth * 0.25),
                height: SizeConfig.screenHeight * 1,
                width: SizeConfig.screenWidth * 0.25,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // width: SizeConfig.screenHeight * 0.2,
                      height: SizeConfig.screenHeight * 0.2,
                      color: Colors.transparent,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: GifImage(
                          controller: controller1,
                          image: const AssetImage("assets/arrow.gif"),
                        ),
                      ),
                    ),
                    Container(height: SizeConfig.screenHeight * 0.2, color: Colors.transparent,)
                  ],
                ),
              ),
            ),

            Container(
              height: SizeConfig.screenHeight * 1,
              width: SizeConfig.screenWidth * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PlayVideo(video_url: widget.video_url,)));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
