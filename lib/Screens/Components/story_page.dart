import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vanzee/Screens/Components/story_board.dart';
import 'package:vanzee/Screens/VideosViewer/VideosScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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
          image: NetworkImage('http://assets.talktalesapps.com/os1.png'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image.network(arguments['img']),
            // RotationTransition(
            //   turns: AlwaysStoppedAnimation(90 / 360),
            //   child: Image.network(arguments['img']),
            // ),
            Container(
              height: SizeConfig.screenHeight * 0.29,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () => {_abouttalktales()},
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 0.29,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StoryBoard()));
                },
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 0.29,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VideosViewer(
                            videoLink:
                                'http://assets.talktalesapps.com/s1video.mp4',
                          )));
                },
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
