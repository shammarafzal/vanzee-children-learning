import 'package:flutter/material.dart';
import 'package:vanzee/Screens/home.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideo1 extends StatefulWidget {
  const PlayVideo1({Key? key}) : super(key: key);

  @override
  State<PlayVideo1> createState() => _PlayVideo1State();
}

class _PlayVideo1State extends State<PlayVideo1> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Vl8eYM8jSaw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
          child: YoutubePlayerBuilder(
          player: YoutubePlayer(
          controller: _controller,
    ),
    builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
    }
    ),
        ),
      )
    );


  }
}
