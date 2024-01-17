import 'package:getx_ku_talk/feature_home/domain/repository/home_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  void listenToInternetConnection(
      {required Function(InternetConnectionStatus status) onStatusChanged}) {
    InternetConnectionChecker().onStatusChange.listen(onStatusChanged);
  }
}
