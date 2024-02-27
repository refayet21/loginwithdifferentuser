import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/generaluser.controller.dart';

class GeneraluserScreen extends GetView<GeneraluserController> {
  const GeneraluserScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeneraluserScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GeneraluserScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
