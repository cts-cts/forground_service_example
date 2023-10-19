import 'package:flutter/material.dart';
import 'package:forground_service_example/src/base/base_bindings.dart';
import 'package:forground_service_example/src/pages/splash_page.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BaseBindings(),
      smartManagement: SmartManagement.onlyBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
