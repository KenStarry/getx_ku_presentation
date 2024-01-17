import 'package:get/get.dart';
import 'package:getx_ku_talk/feature_home/presentation/controller/home_controller.dart';

void invokeControllers() {

  Get.lazyPut(() => HomeController());
}