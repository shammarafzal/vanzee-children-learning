import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanzee/Screens/story1/s1_final.dart';
import 'package:vanzee/Screens/story1/single_story_2.dart';
import 'package:vanzee/Screens/story1/single_story_3.dart';
import 'package:vanzee/Screens/story1/single_story_4.dart';
import 'package:vanzee/Screens/story1/single_story_5.dart';
import 'package:vanzee/Screens/story1/single_story_6.dart';

import '../../Settings/SizeConfig.dart';
import 'single_story_1.dart';

class StoryAnimation extends StatefulWidget {
  const StoryAnimation({Key? key}) : super(key: key);

  @override
  State<StoryAnimation> createState() => _StoryAnimationState();
}

class _StoryAnimationState extends State<StoryAnimation> {
  HorizontalFlipPageTurnController horizontalFlipPageTurnController = HorizontalFlipPageTurnController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HorizontalFlipPageTurn(
        children: [
          SingleStoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent2(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent6(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent3(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent4(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent5(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponentF(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),

        ],
        cellSize: Size(SizeConfig.screenHeight, SizeConfig.screenWidth),
        controller: horizontalFlipPageTurnController,
      ),
    );
  }
}
