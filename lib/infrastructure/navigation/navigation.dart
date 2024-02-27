import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.GENERALUSER,
      page: () => GeneraluserScreen(),
      binding: GeneraluserControllerBinding(),
    ),
    GetPage(
      name: Routes.DOUSER,
      page: () => DouserScreen(),
      binding: DouserControllerBinding(),
    ),
    GetPage(
      name: Routes.ADDUSER,
      page: () => const AdduserScreen(),
      binding: AdduserControllerBinding(),
    ),
    GetPage(
      name: Routes.ADMIN_ADDGENUSER,
      page: () => const AdminAddgenuserScreen(),
      binding: AdminAddgenuserControllerBinding(),
    ),
    GetPage(
      name: Routes.ADMIN_ADDPRODUCT,
      page: () => const AdminAddproductScreen(),
      binding: AdminAddproductControllerBinding(),
    ),
    GetPage(
      name: Routes.ADMIN_ADDVENDOR,
      page: () => const AdminAddvendorScreen(),
      binding: AdminAddvendorControllerBinding(),
    ),
  ];
}
