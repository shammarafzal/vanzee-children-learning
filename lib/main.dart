import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'Routes/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        getPages: Routes.routes),
  );
}
