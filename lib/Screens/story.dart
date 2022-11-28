import 'package:flutter/material.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

// class StoryList extends StatelessWidget {
//   const StoryList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//           StoryCard1(
//             // img: 'http://assets.talktalesapps.com/m1.png',
//           ),
//         ]));
//   }
// }

class StoryCard1 extends StatefulWidget {
  const StoryCard1(
      {Key? key,})
      : super(key: key);
  @override
  _StoryCard1State createState() => _StoryCard1State();
}

class _StoryCard1State extends State<StoryCard1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return RotatedBox(
      quarterTurns: 1,
      child: ListView(
        children: [
          Card(
            child: Column(
              children: [

                RotatedBox(
                  quarterTurns: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.6,
                      height: SizeConfig.screenHeight * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Assets/s1open.png"),
                        ),
                      ),
                     ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.9,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/storyPage');
                        },
                        color: Color.fromRGBO(235, 159, 73, 1),
                        textColor: Colors.white,
                        child: Text(
                          'Play',
                          style: TextStyle(fontSize: 14),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    )),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.6,
                      height: SizeConfig.screenHeight * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Assets/s2open.png"),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.9,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/storyPage2');
                        },
                        color: Color.fromRGBO(235, 159, 73, 1),
                        textColor: Colors.white,
                        child: Text(
                          'Play',
                          style: TextStyle(fontSize: 14),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    )),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.6,
                      height: SizeConfig.screenHeight * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Assets/s3open.png"),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: SizeConfig.screenWidth * 0.9,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/storyPage3');
                        },
                        color: Color.fromRGBO(235, 159, 73, 1),
                        textColor: Colors.white,
                        child: Text(
                          'Play',
                          style: TextStyle(fontSize: 14),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
