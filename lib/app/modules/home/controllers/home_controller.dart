import 'package:get/get.dart';
import 'package:movie_app/app/modules/home/views/movie_view.dart';
import 'package:movie_app/app/modules/home/views/save_view.dart';
import 'package:movie_app/app/modules/home/views/search_view.dart';
import 'package:movie_app/app/modules/home/views/tvshow_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  
  var currentIndex=0.obs;


  var subviews =[
    MovieView(),
    TvshowView(),
    SearchView(),
    SaveView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
