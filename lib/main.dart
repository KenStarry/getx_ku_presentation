import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ku_talk/feature_home/dependency_injection/di.dart';
import 'package:getx_ku_talk/feature_home/dependency_injection/repository_injection.dart';
import 'package:getx_ku_talk/home_page.dart';

void main() {

  invokeControllers();
  invokeRepoClasses();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

