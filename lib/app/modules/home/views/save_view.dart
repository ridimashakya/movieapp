import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SaveView extends GetView {
  const SaveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SaveView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SaveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
