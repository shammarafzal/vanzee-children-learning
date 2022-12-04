import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanzee/Screens/Components/single_story_component.dart';
import 'package:vanzee/Screens/story2/s2_final.dart';

import '../../Constants/constant.dart';
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
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HorizontalFlipPageTurn(
        children: [
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: uhoh_word, vid1: uhoh_vid1, vid2: uhoh_vid2, mp3: uhoh_mp3, img: uhoh_img, isfirst: true,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ohno_word, vid1: ohno_vid1, vid2: ohno_vid2, mp3: ohno_mp3, img: ohno_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ow_word, vid1: ow_vid1, vid2: ow_vid2, mp3: ow_mp3, img: ow_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: bam_word, vid1: bam_vid1, vid2: bam_vid2, mp3: bam_mp3, img: bam_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ohman_word, vid1: ohman_vid1, vid2: ohman_vid2, mp3: ohman_mp3, img: ohman_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: bom_word, vid1: bom_vid1, vid2: bom_vid2, mp3: bom_mp3, img: bom_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: pop_word, vid1: pop_vid1, vid2: pop_vid2, mp3: pop_mp3, img: pop_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ohyeah_word, vid1: ohyeah_vid1, vid2: ohyeah_vid2, mp3: ohyeah_mp3, img: ohyeah_img),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: whee_word, vid1: whee_vid1, vid2: whee_vid2, mp3: whee_mp3, img: whee_img),
          SingleStoryComponentF2(horizontalFlipPageTurnController: horizontalFlipPageTurnController,),

        ],
        cellSize: Size(SizeConfig.screenWidth, SizeConfig.screenHeight),
        controller: horizontalFlipPageTurnController,
      ),
    );
  }
}
