import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanzee/Constants/constant.dart';
import 'package:vanzee/Screens/story1/s1_final.dart';
import 'package:vanzee/Screens/Components/single_story_component.dart';

import '../../Settings/SizeConfig.dart';
import '../Components/page_turn_animation.dart';

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
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: oh_word, vid1: oh_vid1, vid2: oh_vid2, mp3: oh_mp3, img: oh_img, isfirst: true, vid1Key: UniqueKey(), vid2Key: UniqueKey(),),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: mmm_word, vid1: mmm_vid1, vid2: mmm_vid2, mp3: mmm_mp3, img: mmm_img, vid1Key: UniqueKey(), vid2Key: UniqueKey(),),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ew_word, vid1: ew_vid1, vid2: ew_vid2, mp3: ew_mp3, img: ew_img, vid1Key: UniqueKey(), vid2Key: UniqueKey(),),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: eh_word, vid1: eh_vid1, vid2: eh_vid2, mp3: eh_mp3, img: eh_img, vid1Key: UniqueKey(), vid2Key: UniqueKey(),),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: eee_word, vid1: eee_vid1, vid2: eee_vid2, mp3: eee_mp3, img: eee_img, vid1Key: UniqueKey(), vid2Key: UniqueKey(),),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ah_word, vid1: ah_vid1, vid2: ah_vid2, mp3: ah_mp3, img: ah_img, vid1Key: UniqueKey(), vid2Key: UniqueKey(),),
          Single1Final(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),
        ],
        cellSize: Size(SizeConfig.screenWidth, SizeConfig.screenHeight),
        controller: horizontalFlipPageTurnController,
      ),
    );
  }
}
