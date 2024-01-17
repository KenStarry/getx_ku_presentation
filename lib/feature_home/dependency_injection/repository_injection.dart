import 'package:get_it/get_it.dart';
import 'package:getx_ku_talk/feature_home/data/repository/home_repository_impl.dart';
import 'package:getx_ku_talk/feature_home/domain/repository/home_repository.dart';
import 'package:getx_ku_talk/feature_home/domain/use_case/listen_to_internet.dart';

final locator = GetIt.instance;

void invokeRepoClasses() {
  locator.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());

  locator.registerLazySingleton<ListenToInternet>(() => ListenToInternet());
}
