// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vanzee/API/api.dart';
// import 'package:vanzee/Model/book_search.dart';
// import 'package:vanzee/Screens/story.dart';
// import 'package:vanzee/Settings/SizeConfig.dart';
// import 'dart:async';
// import 'dart:io';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
//
// class Search extends StatefulWidget {
//   @override
//   _SearchState createState() => _SearchState();
// }
//
// String? searchvalue;
//
// class _SearchState extends State<Search> {
//   SearchController searchController = Get.put(SearchController());
//
//   final _searchProduct = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Theme(
//                 data: new ThemeData(
//                   primaryColor: Colors.green,
//                   primaryColorDark: Colors.black,
//                 ),
//                 child: TextField(
//                   cursorColor: Colors.black,
//                   controller: _searchProduct,
//                   textInputAction: TextInputAction.search,
//                   onSubmitted: (value) async {},
//                   decoration: InputDecoration(
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Color.fromRGBO(235, 159, 73, 1)),
//                       borderRadius: BorderRadius.circular(25.0),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: const BorderRadius.all(
//                         const Radius.circular(25.0),
//                       ),
//                     ),
//                     labelText: 'Search',
//                     labelStyle: TextStyle(
//                         color: Colors.black,
//                         fontSize: SizeConfig.safeBlockHorizontal * 5),
//                     suffixIcon: IconButton(
//                       onPressed: () async {
//                         setState(() {
//                           searchvalue = _searchProduct.text;
//                         });
//                       },
//                       icon: Icon(
//                         Icons.search,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 400,
//               child: ListView(children: [
//                 Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Obx(() {
//                       return ListView.builder(
//                           itemCount: searchController.searchList.length,
//                           shrinkWrap: true,
//                           itemBuilder: (BuildContext context, index) {
//                             return StoryCard(
//                               img: '${API().image_base_url}' +
//                                   searchController.searchList[index].image,
//                               title: searchController.searchList[index].title,
//                               childVideo: '${API().image_base_url}' +
//                                   searchController
//                                       .searchList[index].childVideos[0].video,
//                               mouthVideo: '${API().image_base_url}' +
//                                   searchController
//                                       .searchList[index].mouthVideos[0].video,
//                             );
//                           });
//                     })),
//               ]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SearchController extends GetxController {
//   // late String searchValue;
//   // SearchController({required this.searchValue});
//   RxList<BookSearch> searchList = <BookSearch>[].obs;
//   Timer? timer;
//
//   @override
//   void onInit() {
//     fetchSearches();
//     super.onInit();
//     timer = Timer.periodic(Duration(seconds: 8), (Timer t) => fetchSearches());
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     super.dispose();
//   }
//
//   void fetchSearches() async {
//     try {
//       print(searchvalue);
//       var search = await API().getSearch(searchvalue!);
//       if (search != null) {
//         searchList.value = search;
//       }
//     } on SocketException catch (e) {
//       timer?.cancel();
//       await EasyLoading.showError('No Internet');
//     } finally {}
//   }
// }
