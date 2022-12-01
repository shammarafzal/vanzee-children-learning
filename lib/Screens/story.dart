import 'package:flutter/material.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class StoryCard1 extends StatefulWidget {
  const StoryCard1({
    Key? key,
  }) : super(key: key);

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
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.6,
                    height: SizeConfig.screenHeight * 0.44,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("Assets/s1open.png"),
                      ),
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: SizeConfig.screenWidth * 0.95,
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
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.6,
                    height: SizeConfig.screenHeight * 0.44,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("Assets/s2open.png"),
                      ),
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: SizeConfig.screenWidth * 0.95,
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
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.6,
                    height: SizeConfig.screenHeight * 0.44,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("Assets/s3open.png"),
                      ),
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: SizeConfig.screenWidth * 0.95,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
