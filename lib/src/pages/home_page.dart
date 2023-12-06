import 'package:flutter/material.dart';
import 'package:forground_service_example/src/base/base.dart';
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
            // TextButton(
            //   onPressed: () async {
            //     Base.userController.test1();
            //   },
            //   child: Text('Open'),
            // ),
            TextButton(
              onPressed: () async {
                Base.userController.add();
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () async {
                Base.userController.check();
              },
              child: Text('Check'),
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
