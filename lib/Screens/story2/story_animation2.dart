// import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanzee/Screens/story2/s2_final.dart';
import 'package:vanzee/Screens/story2/single_story_21.dart';
import 'package:vanzee/Screens/story2/single_story_22.dart';
import 'package:vanzee/Screens/story2/single_story_23.dart';
import 'package:vanzee/Screens/story2/single_story_24.dart';
import 'package:vanzee/Screens/story2/single_story_25.dart';
import 'package:vanzee/Screens/story2/single_story_26.dart';
import 'package:vanzee/Screens/story2/single_story_27.dart';
import 'package:vanzee/Screens/story2/single_story_28.dart';
import 'package:vanzee/Screens/story2/single_story_29.dart';

import '../../Settings/SizeConfig.dart';
import '../Components/page_turn_animation.dart';


class StoryAnimation2 extends StatefulWidget {
  const StoryAnimation2({Key? key}) : super(key: key);

  @override
  State<StoryAnimation2> createState() => _StoryAnimation2State();
}

class _StoryAnimation2State extends State<StoryAnimation2> {
  HorizontalFlipPageTurnController horizontalFlipPageTurnController = HorizontalFlipPageTurnController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HorizontalFlipPageTurn(
        children: [
          SingleStoryComponent21(horizontalFlipPageTurnController: horizontalFlipPageTurnController),
          SingleStoryComponent22(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent23(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent24(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent25(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent26(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent27(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent28(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponent29(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
          SingleStoryComponentF2(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),

        ],
        cellSize: Size(SizeConfig.screenHeight, SizeConfig.screenWidth),
        controller: horizontalFlipPageTurnController,
      ),
    );
  }
}
