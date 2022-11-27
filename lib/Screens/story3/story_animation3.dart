// import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanzee/Screens/story3/s3_final.dart';
import 'package:vanzee/Screens/story3/single_story_31.dart';
import 'package:vanzee/Screens/story3/single_story_32.dart';
import 'package:vanzee/Screens/story3/single_story_33.dart';
import 'package:vanzee/Screens/story3/single_story_34.dart';
import 'package:vanzee/Screens/story3/single_story_35.dart';
import 'package:vanzee/Screens/story3/single_story_36.dart';
import 'package:vanzee/Screens/story3/single_story_37.dart';

import '../../Settings/SizeConfig.dart';
import '../page_turn_animation.dart';


class StoryAnimation3 extends StatefulWidget {
  const StoryAnimation3({Key? key}) : super(key: key);

  @override
  State<StoryAnimation3> createState() => _StoryAnimation3State();
}

class _StoryAnimation3State extends State<StoryAnimation3> {
  HorizontalFlipPageTurnController horizontalFlipPageTurnController = HorizontalFlipPageTurnController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HorizontalFlipPageTurn(
        children: [
          SingleStoryComponent31(horizontalFlipPageTurnController: horizontalFlipPageTurnController),
          SingleStoryComponent32(horizontalFlipPageTurnController: horizontalFlipPageTurnController),
          SingleStoryComponent33(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent34(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent35(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent36(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent37(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponentF3(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),

        ],
        cellSize: Size(SizeConfig.screenHeight, SizeConfig.screenWidth),
        controller: horizontalFlipPageTurnController,
      ),
    );
  }
}
