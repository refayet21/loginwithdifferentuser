import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_login/infrastructure/navigation/routes.dart';
import 'package:multi_login/model/drawer_menu.dart';
import 'package:multi_login/widgets/Drawer/reuseable_drawer.dart';

class AdminDrawer extends StatelessWidget {
  final List<DrawerMenuItem> drawerItems = [
    DrawerMenuItem(
        title: 'Home', routeName: Routes.GENERALUSER, icon: Icons.dashboard),
    DrawerMenuItem(
        title: 'About', routeName: Routes.GENERALUSER, icon: Icons.person),
    DrawerMenuItem(
      title: 'Version No',
    ),
  ];
  AdminDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseAbleDrawer(
        header: DrawerHeader(
          child: Row(
            children: [
              // Your app logo or image
              // Image.asset(
              //   'assets/images/app_logo.png',
              //   width: 50,
              //   height: 50,
              // ),
              SizedBox(width: 16),
              // Your app name or title
              Text(
                'Your App Name',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blue, // Change this to your desired color
          ),
        ),
        menuItems: drawerItems);
  }
}
