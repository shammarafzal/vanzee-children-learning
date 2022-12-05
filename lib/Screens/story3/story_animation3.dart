import 'package:flutter/material.dart';
import 'package:vanzee/Constants/constant.dart';
import 'package:vanzee/Screens/Components/single_story_component.dart';
import 'package:vanzee/Screens/story3/s3_final.dart';
import '../../Settings/SizeConfig.dart';
import '../Components/page_turn_animation.dart';


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
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: moo_word, vid1: moo_vid1, vid2: moo_vid2, mp3: moo_mp3, img: moo_img, isfirst: true, storyNo: 3,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: oin_word, vid1: oin_vid1, vid2: oin_vid2, mp3: oin_mp3, img: oin_img, storyNo: 3,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: nei_word, vid1: nei_vid1, vid2: nei_vid2, mp3: nei_mp3, img: nei_img, storyNo: 3,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: bak_word, vid1: bak_vid1, vid2: bak_vid2, mp3: bak_mp3, img: bak_img, storyNo: 3,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: ark_word, vid1: ark_vid1, vid2: ark_vid2, mp3: ark_mp3, img: ark_img, storyNo: 3,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: meo_word, vid1: meo_vid1, vid2: meo_vid2, mp3: meo_mp3, img: meo_img, storyNo: 3,),
          StoryComponent(horizontalFlipPageTurnController: horizontalFlipPageTurnController, word: baa_word, vid1: baa_vid1, vid2: baa_vid2, mp3: baa_mp3, img: baa_img, storyNo: 3,),
          SingleStoryComponentF3(horizontalFlipPageTurnController: horizontalFlipPageTurnController),
        ],
        cellSize: Size(SizeConfig.screenWidth, SizeConfig.screenHeight),
        controller: horizontalFlipPageTurnController,
      ),
    );
  }
}
