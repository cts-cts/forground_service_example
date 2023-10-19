import 'package:forground_service_example/src/controllers/config_controller.dart';
import 'package:forground_service_example/src/controllers/user_controller.dart';
import 'package:forground_service_example/src/services/forground_service.dart';
import 'package:get/get.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigController());
    Get.lazyPut(() => UserController());

    // Services
    Get.lazyPut(() => ForgroundService());
  }
}
