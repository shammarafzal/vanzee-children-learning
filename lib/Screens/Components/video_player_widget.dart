import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({Key? key, required this.url, required this.dataSourceType,  required this.newKey,}) : super(key: newKey);
  final UniqueKey newKey;
  final String url;
  final DataSourceType dataSourceType;
  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  @override
  void initState(){
    super.initState();
    setState(() {
      switch(widget.dataSourceType){
        case DataSourceType.asset:
          _videoPlayerController = VideoPlayerController.asset(widget.url, videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))..initialize().then((_) => setState((){}));
          break;
        case DataSourceType.network:
          _videoPlayerController = VideoPlayerController.asset(widget.url);
          break;
        case DataSourceType.file:
          _videoPlayerController = VideoPlayerController.asset(widget.url);
          break;
        case DataSourceType.contentUri:
          _videoPlayerController = VideoPlayerController.asset(widget.url);
          break;
      }
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 16/9,
      );
    });
  }

  @override
  void dispose(){
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 16/9,
    child: Chewie(controller: _chewieController,),
    );
  }
}
