import 'dart:async';
import 'dart:io';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Model/get_books.dart';


class BookController extends GetxController{
  RxList<Books> bookList = <Books>[].obs;
  Timer? timer;

  @override
  void onInit() {
    fetchBooks();
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 8), (Timer t) => fetchBooks());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void fetchBooks() async{
    try {
      var book = await API().getBooks();
      if(book != null){
        bookList.value = book;
      }
    } on SocketException catch (e) {
      timer?.cancel();
      await EasyLoading.showError('No Internet');
    }finally {

    }
  }

}