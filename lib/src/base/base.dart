import 'package:forground_service_example/src/controllers/config_controller.dart';
import 'package:forground_service_example/src/controllers/user_controller.dart';
import 'package:forground_service_example/src/services/forground_service.dart';
import 'package:get/get.dart';

class Base {
  Base._();
// Controller
  static final configController = Get.find<ConfigController>();
  static final userController = Get.find<UserController>();
  // ---------------------------------------------------------

  // Services
  static final forgroundService = Get.find<ForgroundService>();
  // ---------------------------------------------------------
}
