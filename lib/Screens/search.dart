import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Controller/search_controller.dart';
import 'package:vanzee/Screens/story.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchController searchController =
      Get.put(SearchController(searchValue: 'a'));

  final _searchProduct = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Theme(
                data: new ThemeData(
                  primaryColor: Colors.green,
                  primaryColorDark: Colors.black,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _searchProduct,
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) async {},
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(235, 159, 73, 1)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.safeBlockHorizontal * 5),
                    suffixIcon: IconButton(
                      onPressed: () async {
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView(children: [
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Obx(() {
                      return ListView.builder(
                          itemCount: searchController.searchList.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return StoryCard(
                              img: '${API().image_base_url}' +
                                  searchController.searchList[index].image,
                              title: searchController.searchList[index].title,
                              childVideo: '${API().image_base_url}' +
                                  searchController
                                      .searchList[index].childVideos[0].video,
                              mouthVideo: '${API().image_base_url}' +
                                  searchController
                                      .searchList[index].mouthVideos[0].video,
                            );
                          });
                    })),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
