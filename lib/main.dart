import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  await GetStorage.init();
  var initialRoute = await Routes.initialRoute;
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Main(initialRoute));
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => Main(initialRoute), // Wrap your app
  // ));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
//  responsiveWidgets: responsiveWidgets,
      ensureScreenSize: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: initialRoute,
        getPages: Nav.routes,
      ),
    );
  }
}
