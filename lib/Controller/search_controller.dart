import 'dart:async';
import 'dart:io';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Model/book_search.dart';

class SearchController extends GetxController {
  late String searchValue;
  SearchController({required this.searchValue});
  RxList<BookSearch> searchList = <BookSearch>[].obs;
  Timer? timer;

  @override
  void onInit() {
    fetchSearches();
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 8), (Timer t) => fetchSearches());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void fetchSearches() async {
    try {
      print(searchValue);
      var search = await API().getSearch(searchValue);
      if (search != null) {
        searchList.value = search;
      }
    } on SocketException catch (e) {
      timer?.cancel();
      await EasyLoading.showError('No Internet');
    } finally {}
  }
}
