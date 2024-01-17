import 'package:get/get.dart';
import 'package:getx_ku_talk/feature_home/dependency_injection/repository_injection.dart';
import 'package:getx_ku_talk/feature_home/domain/use_case/listen_to_internet.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomeController extends GetxController {
  final listenToInternet = locator.get<ListenToInternet>();

  RxString greetings = "Hello".obs;

  final isConnectedToInternet = false.obs;

  @override
  void onInit() {
    super.onInit();

    // run some code
    listenToInternetConnection(onStatusChanged: (status) {
      isConnectedToInternet.value =
          status == InternetConnectionStatus.connected;
    });
  }

  void listenToInternetConnection(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      listenToInternet.invoke(onStatusChanged: onStatusChanged);

  void sayHello({required String newGreeting}) => greetings.value = newGreeting;
}
