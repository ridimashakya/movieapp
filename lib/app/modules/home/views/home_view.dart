import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Obx(()=> Center(
        child: controller.subviews[controller.currentIndex.value],
      ),
      ),

      bottomNavigationBar: Obx(()=> BottomNavigationBar(

        selectedItemColor: Get.theme.colorScheme.primary,
        unselectedItemColor: Get.theme.colorScheme.secondary,
        showUnselectedLabels:true ,
        backgroundColor: Get.theme.colorScheme.outlineVariant,
        currentIndex: controller.currentIndex.value,

        onTap: (value) {
          controller.currentIndex.value=value;
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Movie",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "TV Show",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Save",
          ),
        ],

        ),
      ),
      
    );
  }
}
