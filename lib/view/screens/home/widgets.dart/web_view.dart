import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexacom/controller/home_controller.dart';
import 'package:hexacom/data/repository/data_list.dart';
import 'package:hexacom/util/color_resources.dart';
import 'package:hexacom/util/images.dart';
import 'package:hexacom/util/style.dart';
import 'package:hexacom/view/base/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WebView extends StatelessWidget {
  WebView({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.COLOR_WHITE,
      appBar: const CustomAppBar(),
      body: GetBuilder<HomeController>(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              sliderPortion(size),
              const SizedBox(
                height: 50,
              ),
              Container(
                //color: Colors.amber,
                // height: 300,
                width: size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Popular Categories',
                      style: style,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 220,
                      child: Stack(
                        children: [
                          ListView.builder(
                            itemCount: popularCategories.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorResources.COLOR_ITEM_BG,
                                      ),
                                      child: Image.asset(
                                        popularCategories[index]['image']
                                            .toString(),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      popularCategories[index]['name']
                                          .toString(),
                                      style: GoogleFonts.lato(
                                        textStyle: style.copyWith(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          Positioned(
                            top: 80,
                            left: 5,
                            child: Container(
                              height: 48,
                              width: 48,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.COLOR_WHITE,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorResources.COLOR_SHADOW
                                        .withOpacity(0.1),
                                    blurRadius: 16,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Image.asset(Images.leftArrow),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 5,
                            child: Container(
                              height: 48,
                              width: 48,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.COLOR_WHITE,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorResources.COLOR_SHADOW
                                        .withOpacity(0.1),
                                    blurRadius: 16,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                              ),
                              child: Image.asset(Images.rightArrow),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  //slider..
  Widget sliderPortion(Size size) {
    return Stack(
      children: [
        SizedBox(
          height: 486,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: sliderImageList.length,
            itemBuilder: (context, index, realIndex) {
              final image = sliderImageList[index];
              return buildImage(image, index);
            },
            options: CarouselOptions(
              autoPlay: true,
              //enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 4),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                homeController.indicateIndex(index);
              },
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: size.width * 0.5,
          right: 0,
          child: buildIndicator(),
        ),
      ],
    );
  }

  /// Slider View.......
  Widget buildImage(String image, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        // borderRadius: const BorderRadius.all(
        //   Radius.circular(10),
        // ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }

  ///Indecator....
  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: homeController.activeIndicator,
      count: sliderImageList.length,
      effect: CustomizableEffect(
        dotDecoration: DotDecoration(
          height: 5,
          width: 40,
          color: ColorResources.COLOR_WHITE.withOpacity(0.37),
        ),
        activeDotDecoration: const DotDecoration(
          height: 5,
          width: 40,
          color: ColorResources.COLOR_WHITE,
        ),
      ),
    );
  }
}
