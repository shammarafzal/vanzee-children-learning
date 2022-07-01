import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'chew.dart';

class VideosViewer extends StatefulWidget {
  VideosViewer({Key? key, required this.videoLink}) : super(key: key);
  final videoLink;
  @override
  _VideosViewerState createState() => _VideosViewerState();
}

class _VideosViewerState extends State<VideosViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        title: Text('Video'),
      ),
      body: Container(
          child: ChewieListItem(
        videoPlayerController: VideoPlayerController.network(
          widget.videoLink,
        ),
        looping: false,
      )),
    );
  }
}
