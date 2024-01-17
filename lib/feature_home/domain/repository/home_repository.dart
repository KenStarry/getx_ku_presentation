import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class HomeRepository {

  void listenToInternetConnection({
    required Function(InternetConnectionStatus status) onStatusChanged
  });
}