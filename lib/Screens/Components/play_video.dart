import 'package:flutter/material.dart';
import 'package:vanzee/Screens/bottom_bar_screens/home.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import 'package:video_player/video_player.dart';
import 'video_player_widget.dart';

class PlayVideo extends StatefulWidget {
  const PlayVideo({Key? key, required this.video_url, required this.vidKey}) : super(key: key);
  final video_url;
  final vidKey;
  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
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
        child:VideoPlayerView(url: widget.video_url, dataSourceType: DataSourceType.asset, newKey: widget.vidKey),
      )
    );
  }
}
