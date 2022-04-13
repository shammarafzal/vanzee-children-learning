import 'package:flutter/material.dart';
import 'package:vanzee/Screens/Components/story_images.dart';
import 'package:vanzee/Screens/VideosViewer/VideosScreen.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title']),
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ImagesList(),
            Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
                  // boxShadow: [
                  //   BoxShadow(color: Colors.green, spreadRadius: 3),
                  // ],
                ),
                child: VideosViewer(
                  videoLink: arguments['childVideo'],
                )),
            Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
                  // boxShadow: [
                  //   BoxShadow(color: Colors.green, spreadRadius: 3),
                  // ],
                ),
                child: VideosViewer(
                  videoLink: arguments['mouthVideo'],
                )),
          ],
        ),
      ),
    );
  }
}
