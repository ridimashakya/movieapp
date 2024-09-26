import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/core/common_widgets/preview_card_image.dart';
import 'package:movie_app/app/core/values/s_spacing.dart';
// import 'package:movie_app/app/modules/home/controllers/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieView extends GetView {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {

    // final List<String> imagePaths = [
    //   'assets/image/society.jpg',
    //   'assets/image/titanic.jpg',
    //   'assets/image/notebook.jpg',
    //   'assets/image/lala_land.jpg',
    // ];

    return Scaffold(
      
      body: Container(
        child: SingleChildScrollView(

          child: Column(  

            children: [
              CarouselSlider(
                // carouselController: controller.carousel_sliderController,

                options: CarouselOptions(height: 400.0, autoPlay: true, 
                         viewportFraction: 1.0 //view fraction normally is 0.8
                         ),
                // items: imagePaths.map((imagePath) {
                 items: [1,2,3,4,5].map((i) {
                  
                  return Builder(
                    builder: (BuildContext context) {
                      
                    //   return Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     margin: EdgeInsets.symmetric(horizontal: 5.0),
                        
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: AssetImage(imagePath),
                    //         fit: BoxFit.cover,
                    //         ),
                    //     ),
                    // );

                    return Stack(
                      children: [
                        Positioned.fill(child: PreviewCardImage(url: '')),

                        Align(
                          alignment: Alignment.bottomLeft,

                          child: Container(
                            padding: const EdgeInsets.all(16.0), //padding halna we add wrap with container and only give padding

                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset: const Offset(
                                  0, 3), //changes position of shadow
                              ),
                            ]),

                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('The LaLa Land',
                                style: Get.textTheme.titleLarge,),
                                Text('Jan 27 2009',
                                style: Get.textTheme.titleMedium),

                                SmoothPageIndicator(    
                                  controller: PageController(
                                    initialPage: i-1,
                                  ),  // PageController    
                                  count:  5,    
                                  effect:  ExpandingDotsEffect(),  // your preferred effect    
                                  onDotClicked: (index){    
                                  }
                                ),
                              ],
                            ),
                          ),

                          ),
                      ],
                    );

                  },
                 );
                }).toList(),
              ),


              Row(
                children: [
                  SSpacing.smW,
                  Text("Popular Movies",
                  style: Get.textTheme.titleLarge,
                  ),
                  const Spacer(),
                  Text("See All",
                  style: Get.textTheme.bodyMedium,
                  ),
                  Icon(
                    Icons.arrow_forward_ios, 
                    size: 16,
                  ),
                  SSpacing.smW,
                ],   
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal, //for horizontal scroll

                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    SSpacing.smW,

                    Container(
                      width: 150,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    SSpacing.smW,

                    Container(
                      width: 150,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    SSpacing.smW,

                    Container(
                      width: 150,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    SSpacing.smW,

                    Container(
                      width: 150,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    SSpacing.smW,

                    Container(
                      width: 150,
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                    SSpacing.smW,
                  ],
                ),
              )

            ],
           )

          ),
        ),
    );
  }
}
