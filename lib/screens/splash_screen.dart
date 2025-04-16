import 'package:flutter/material.dart';
import 'package:movies_app_provider/widgets/my_error_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyErrorWidget(errorText: "errorText", retryFunction: () {}),
    );
  }
}