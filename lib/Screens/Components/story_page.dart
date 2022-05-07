import 'package:flutter/material.dart';
import 'package:vanzee/Screens/VideosViewer/VideosScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  _abouttalktales() async {
    const url = "https://www.talktalesbooks.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title']),
        backgroundColor: const Color.fromRGBO(235, 159, 73, 1),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(arguments['img']),
        )),
        child: Stack(
          children: [
            // Image.network(arguments['img']),
            // RotationTransition(
            //   turns: AlwaysStoppedAnimation(90 / 360),
            //   child: Image.network(arguments['img']),
            // ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 120,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () => {_abouttalktales()},
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 200,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black
                ),
                child: InkWell(
                  onTap: () {
                    print('read');
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 90,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black
                ),
                child: InkWell(
                  onTap: () {
                    print('play');
                  },
                ),
              ),
            )
          ],
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView(
      //     children: [
      //       // ImagesList(),
      //       Image.network(arguments['img']),
      //       Container(
      //           height: 330,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             // color: Colors.black,
      //             // boxShadow: [
      //             //   BoxShadow(color: Colors.green, spreadRadius: 3),
      //             // ],
      //           ),
      //           child: VideosViewer(
      //             videoLink: arguments['childVideo'],
      //           )),
      //       Container(
      //           height: 330,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             // color: Colors.black,
      //             // boxShadow: [
      //             //   BoxShadow(color: Colors.green, spreadRadius: 3),
      //             // ],
      //           ),
      //           child: VideosViewer(
      //             videoLink: arguments['mouthVideo'],
      //           )),
      //     ],
      //   ),
      // ),
    );
  }
}
