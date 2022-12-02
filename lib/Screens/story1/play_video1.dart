import 'package:flutter/material.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import 'package:video_player/video_player.dart';
import '../Components/video_player_widget.dart';

class PlayVideo1 extends StatefulWidget {
  const PlayVideo1({Key? key}) : super(key: key);
  @override
  State<PlayVideo1> createState() => _PlayVideo1State();
}

class _PlayVideo1State extends State<PlayVideo1> {
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
      body: Container(
        width:SizeConfig.screenWidth * 1,
        height: SizeConfig.screenHeight * 1,
        child:VideoPlayerView(url: "Assets/s1/videos/s1Movie.mp4", dataSourceType: DataSourceType.asset),
      )
    );


  }
}
