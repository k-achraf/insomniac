import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/test_start_controller.dart';

class TestStartView extends GetView<TestStartController> {
  const TestStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestStartView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TestStartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
