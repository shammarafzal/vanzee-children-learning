import 'dart:async';
import 'dart:io';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Model/get_me.dart';

class MeController extends GetxController{
  RxList<GetMe> meList = <GetMe>[].obs;
  Timer? timer;

  @override
  void onInit() {
    fetchMe();
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 8), (Timer t) => fetchMe());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void fetchMe() async{
    try {
      var me = await API().getMe();
      if(me != null){
        meList.value = me;
      }
    } on SocketException catch (e) {
      timer?.cancel();
      await EasyLoading.showError('No Internet');
    }finally {

    }
  }

}