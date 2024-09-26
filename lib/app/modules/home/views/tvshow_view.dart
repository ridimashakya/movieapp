import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TvshowView extends GetView {
  const TvshowView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TvshowView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TvshowView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
