import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: SizeConfig.screenWidth * 0.4,
                  height: SizeConfig.screenHeight * 0.65,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("Assets/s1open.png"),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.4,
                    height: SizeConfig.screenHeight * 0.08,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/storyPage');
                      },
                        color: Color.fromRGBO(100,114,43,0.8),
                      textColor: Colors.white,
                      child: Text(
                        'Play',
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                  )),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: SizeConfig.screenWidth * 0.4,
                  height: SizeConfig.screenHeight * 0.65,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("Assets/s2open.png"),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.4,
                    height: SizeConfig.screenHeight * 0.08,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/storyPage2');
                      },
                      color: Color.fromRGBO(17,67,117,0.8),
                      textColor: Colors.white,
                      child: Text(
                        'Play',
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                  )),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: SizeConfig.screenWidth * 0.4,
                  height: SizeConfig.screenHeight * 0.65,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("Assets/s3open.png"),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.4,
                    height: SizeConfig.screenHeight * 0.08,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/storyPage3');
                      },
                      color: Color.fromRGBO(161,78,34,0.8),
                      textColor: Colors.white,
                      child: Text(
                        'Play',
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
