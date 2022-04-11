import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Controller/books_controller.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:vanzee/Screens/Components/story_page.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.put(BookController());
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Obx(() {
          return ListView.builder(
              itemCount: bookController.bookList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return StoryCard(
                  img: '${API().image_base_url}' +
                      bookController.bookList[index].image,
                  title: bookController.bookList[index].title,
                  childVideo: '${API().image_base_url}' +
                      bookController.bookList[index].childVideos[0].video,
                  mouthVideo: '${API().image_base_url}' +
                      bookController.bookList[index].mouthVideos[0].video,
                );
              });
        }));
  }
}

class StoryCard extends StatefulWidget {
  const StoryCard(
      {Key? key,
      required this.img,
      required this.title,
      required this.childVideo,
      required this.mouthVideo})
      : super(key: key);
  final img;
  final title;
  final childVideo;
  final mouthVideo;
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
                  image: NetworkImage(widget.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/storyPage', arguments: {
                      'title': widget.title,
                      'img': widget.img,
                      'childVideo': widget.childVideo,
                      'mouthVideo': widget.mouthVideo
                    });
                  },
                  color: Color.fromRGBO(235, 159, 73, 1),
                  textColor: Colors.white,
                  child: Text(
                    'Play',
                    style: TextStyle(fontSize: 14),
                  ),
                  padding: EdgeInsets.all(16),
                  // shape: CircleBorder(),
                )),
          ],
        ),
      ),
    );
  }
}
