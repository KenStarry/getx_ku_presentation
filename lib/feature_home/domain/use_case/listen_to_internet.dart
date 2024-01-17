import 'package:getx_ku_talk/feature_home/data/repository/home_repository_impl.dart';
import 'package:getx_ku_talk/feature_home/dependency_injection/repository_injection.dart';
import 'package:getx_ku_talk/feature_home/domain/repository/home_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ListenToInternet {
  final homeRepository = locator.get<HomeRepository>();

  void invoke(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      homeRepository.listenToInternetConnection(
          onStatusChanged: onStatusChanged);
}
