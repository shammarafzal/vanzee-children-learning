import 'package:flutter/material.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import 'package:video_player/video_player.dart';
import '../Components/video_player_widget.dart';

class PlayVideo2 extends StatefulWidget {
  const PlayVideo2({Key? key}) : super(key: key);

  @override
  State<PlayVideo2> createState() => _PlayVideo2State();
}

class _PlayVideo2State extends State<PlayVideo2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
          leading: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home  ()));
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
        body: RotatedBox(
          quarterTurns: 1,
          child: Container(
            width:SizeConfig.screenHeight,
            height: SizeConfig.screenWidth,
            child:VideoPlayerView(url: "Assets/s2/videos/s2Final.mp4", dataSourceType: DataSourceType.asset),
          ),
        )
    );


  }
}
