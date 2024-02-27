import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:multi_login/widgets/admin_drawer.dart';

import 'controllers/admin_addproduct.controller.dart';

class AdminAddproductScreen extends GetView<AdminAddproductController> {
  const AdminAddproductScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AdminDrawer(),
      appBar: AppBar(
        title: const Text('AdminAddproductScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AdminAddproductScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
