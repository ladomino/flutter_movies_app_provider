import 'package:flutter/material.dart';
import 'package:movies_app_provider/constants/my_theme_data.dart';
import 'package:movies_app_provider/screens/movie_screens.dart';
import 'package:movies_app_provider/service/init_getit.dart';
import 'package:movies_app_provider/service/navigation_service.dart';

void main() {
  setupLocator(); // Initialize GetIt
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Movies Flutter App',
      theme: MyThemeData.lightTheme,
      home: const MoviesScreen(),
    );
  }
}