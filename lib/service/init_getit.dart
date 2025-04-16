import 'package:get_it/get_it.dart';
import 'package:movies_app_provider/service/navigation_service.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
}