import 'dart:developer';
import 'dart:io';

import 'package:forground_service_example/src/models/user.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveService extends GetxService {
  @override
  void onInit() async {
    await onInitForApp();
    super.onInit();
  }

  Future<void> onInitForApp() async {
    Directory appDocumentDir = await getApplicationSupportDirectory();

    Hive.init(appDocumentDir.path);

    Hive.registerAdapter(UserAdapter());

    kLog('Hive initialized for app');
  }
}

void kLog(value) {
  log('$value');
}
