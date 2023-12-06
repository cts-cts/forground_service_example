import 'package:forground_service_example/src/helpers/klog.dart';
import 'package:forground_service_example/src/models/user.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class UserController extends GetxController {
  final count = RxInt(0);

  late Box<User> userBox;

  @override
  void onInit() async {
    // final receivePort = FlutterForegroundTask.receivePort;

    // receivePort!.listen((message) {
    //   final countValue = message as int;

    //   count.value = countValue;
    // });

    userBox = await Hive.openBox<User>('users');

    super.onInit();
  }

  void add() async {
    await userBox.put(0, User(name: 'Sm Shohag'));
  }

  void check() async {
    final user = userBox.get(0);
    if (user != null) {
      klog(user.name);
    } else {
      klog('No data');
    }
  }
}
