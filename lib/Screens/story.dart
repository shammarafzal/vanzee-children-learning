import 'package:flutter/material.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:vanzee/Screens/Components/story_page.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          StoryCard(),
          StoryCard(),
          StoryCard(),

        ],
      ),
    );
  }
}


class StoryCard extends StatefulWidget {
  const StoryCard({Key? key}) : super(key: key);
  @override
  _StoryCardState createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      // width: SizeConfig.screenWidth * 0.8,
      // height: SizeConfig.screenHeight * 0.35,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: SizeConfig.screenWidth * 0.9,
              height: SizeConfig.screenHeight * 0.29,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Assets/story1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color.fromRGBO(235,159,73, 1),
                    textColor: Colors.white,
                    child: Text('About', style: TextStyle(fontSize: 14),),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  )
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: () {},
                      color: Color.fromRGBO(235,159,73, 1),
                      textColor: Colors.white,
                      child: Text('Read', style: TextStyle(fontSize: 14),),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => StoryPage()));
                      },
                      color: Color.fromRGBO(235,159,73, 1),
                      textColor: Colors.white,
                      child: Text('Play', style: TextStyle(fontSize: 14),),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
