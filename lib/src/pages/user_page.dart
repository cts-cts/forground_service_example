import 'package:flutter/material.dart';
import 'package:forground_service_example/src/base/base.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${Base.userController.count}'),
      ),
    );
  }
}
