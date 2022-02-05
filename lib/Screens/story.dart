import 'package:flutter/material.dart';
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
                color: const Color.fromRGBO(241,229,225, 0.3),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage('https://m.media-amazon.com/images/I/514+shTlBLL.jpg'),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Moo Baa Laa Laaa', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            )
          ],
        ),
      ),
    );
  }
}
