import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  SplashController splashScreenController = Get.put(SplashController());
  SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'SplashScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
