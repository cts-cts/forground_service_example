import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:forground_service_example/src/base/base.dart';
import 'package:forground_service_example/src/helpers/klog.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final x =
                    await FlutterForegroundTask.checkNotificationPermission();

                klog(x);
              },
              child: Text('Check'),
            ),
            TextButton(
              onPressed: () async {
                final x =
                    await FlutterForegroundTask.requestNotificationPermission();

                klog(x);
              },
              child: Text('Request'),
            ),
            IconButton(
              onPressed: () async {
                Base.forgroundService.startForgroundService();
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () async {
                Base.forgroundService.stopForgroundService();
              },
              icon: Icon(Icons.remove),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Center(
                child: Text('${Base.userController.count}'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
