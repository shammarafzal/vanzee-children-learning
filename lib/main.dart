import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'Routes/route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        getPages: Routes.routes),
  );
  configLoading();
}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}