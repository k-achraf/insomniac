import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/long_test_controller.dart';

class LongTestView extends GetView<LongTestController> {
  const LongTestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LongTestView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LongTestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
