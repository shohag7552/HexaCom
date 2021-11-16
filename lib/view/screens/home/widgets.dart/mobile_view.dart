import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexacom/controller/home_controller.dart';
import 'package:hexacom/data/repository/data_list.dart';
import 'package:hexacom/util/color_resources.dart';
import 'package:hexacom/util/images.dart';
import 'package:hexacom/util/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MobileView extends StatelessWidget {
  MobileView({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return Column(
            children: [
              sliderPortion(size),
              const SizedBox(
                height: 20,
              ),
              popularCategoryPortion(size),
              const SizedBox(
                height: 20,
              ),
              flashSalePortion(size),
              const SizedBox(
                height: 47,
              ),
            ],
          );
        },
      ),
    );
  }

  SizedBox flashSalePortion(Size size) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Flash Sale',
                style: style.copyWith(fontSize: 16),
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ColorResources.COLOR_PRIMARY,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '108',
                      style: GoogleFonts.lato(
                        textStyle: style.copyWith(
                          color: ColorResources.COLOR_WHITE,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                  const Text(' : '),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ColorResources.COLOR_PRIMARY,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '07',
                      style: GoogleFonts.lato(
                        textStyle: style.copyWith(
                          color: ColorResources.COLOR_WHITE,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                  const Text(' : '),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ColorResources.COLOR_PRIMARY,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '14',
                      style: GoogleFonts.lato(
                        textStyle: style.copyWith(
                          color: ColorResources.COLOR_WHITE,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                  const Text(' : '),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: ColorResources.COLOR_WHITE,
                      border: Border.all(
                        color: ColorResources.COLOR_PRIMARY,
                        width: 1,
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '07',
                      style: GoogleFonts.lato(
                        textStyle: style.copyWith(
                          color: ColorResources.COLOR_PRIMARY,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorResources.COLOR_PRIMARY,
                    width: 1,
                  ),
                  color: ColorResources.COLOR_PRIMARY,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'View All ',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ColorResources.COLOR_WHITE,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                      child: Image.asset(
                        Images.rightArrow,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
                itemCount: flashSeleData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: size.width * 0.8,
                    decoration: const BoxDecoration(
                        color: ColorResources.COLOR_WHITE,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: ColorResources.COLOR_GREY,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ]),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: ColorResources.COLOR_ITEM_BG,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(flashSeleData[index]['image']),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${flashSeleData[index]['des']}',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                '****** 4.56',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                '\$${flashSeleData[index]['price']}',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$${flashSeleData[index]['old_price']}',
                                    style: GoogleFonts.lato(
                                      textStyle: style.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    '\$-${flashSeleData[index]['discount']} %',
                                    style: GoogleFonts.lato(
                                      textStyle: style.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  SizedBox popularCategoryPortion(Size size) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore Popular Categories',
            style: style.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: popularCategories.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorResources.COLOR_ITEM_BG,
                        ),
                        child: Image.asset(
                          popularCategories[index]['image'].toString(),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        popularCategories[index]['name'].toString(),
                        style: GoogleFonts.lato(
                          textStyle: style.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  //slider 2..

  Widget sliderPortion2(Size size) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: bannerList.length,
            itemBuilder: (context, index, realIndex) {
              final image = bannerList[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image.toString(),
                    ),
                  ),
                ),
              );
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
        const SizedBox(
          height: 5,
        ),
        buildIndicator2(),
      ],
    );
  }

  Widget buildIndicator2() {
    return AnimatedSmoothIndicator(
      activeIndex: homeController.activeIndicator,
      count: sliderImageList.length,
      effect: ScrollingDotsEffect(
        activeDotColor: ColorResources.COLOR_PRIMARY,
        dotColor: ColorResources.COLOR_PRIMARY.withOpacity(0.5),
      ),
    );
  }

  //slider..
  Widget sliderPortion(Size size) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: sliderImageList.length,
            itemBuilder: (context, index, realIndex) {
              final image = sliderImageList[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              );
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
          left: size.width * 0.4,
          right: 0,
          child: buildIndicator(),
        ),
      ],
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: homeController.activeIndicator,
      count: sliderImageList.length,
      effect: CustomizableEffect(
        dotDecoration: DotDecoration(
          height: 5,
          width: 40,
          borderRadius: BorderRadius.circular(5),
          color: ColorResources.COLOR_WHITE.withOpacity(0.37),
        ),
        activeDotDecoration: const DotDecoration(
          height: 5,
          width: 40,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: ColorResources.COLOR_WHITE,
        ),
      ),
    );
  }
}
