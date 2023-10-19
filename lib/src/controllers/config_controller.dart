import 'package:forground_service_example/src/base/base.dart';
import 'package:forground_service_example/src/helpers/klog.dart';
import 'package:forground_service_example/src/pages/home_page.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  @override
  void onInit() {
    initAppConfig();
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();

    await 2.delay();

    Get.to(() => HomePage());
  }

  void initAppConfig() {
    Base.forgroundService;
    klog('App Config');
  }
}
