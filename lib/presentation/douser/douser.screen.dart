import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/douser.controller.dart';

class DouserScreen extends GetView<DouserController> {
  const DouserScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DouserScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DouserScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
