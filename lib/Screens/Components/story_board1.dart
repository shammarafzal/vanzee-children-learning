import 'package:flutter/material.dart';

import '../../Settings/SizeConfig.dart';

class StoryBoard1 extends StatefulWidget {
  StoryBoard1({Key? key}) : super(key: key);

  @override
  State<StoryBoard1> createState() => _StoryBoard1State();
}

class _StoryBoard1State extends State<StoryBoard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        title: Text('Story Board 1'),
      ),
      body: Container(
        child: Center(child: Text("Next Page")),
      ),
    );
  }
}
