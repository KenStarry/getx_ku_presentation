import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_ku_talk/feature_home/presentation/controller/home_controller.dart';
import 'package:getx_ku_talk/screen_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Obx(() => Text(
                "IS CONNECTED ? ${_homeController.isConnectedToInternet.value}",
                style: TextStyle(fontSize: 48),
              )),
          FilledButton(onPressed: () {}, child: Text("Say Hello"))
        ],
      )),
    );
  }
}
