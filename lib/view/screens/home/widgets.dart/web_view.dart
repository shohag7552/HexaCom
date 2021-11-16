import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
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

    print(size.width);

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

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
              SizedBox(
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
                            top: 50,
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
                            top: 50,
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
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Flash Sale',
                          style: style,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: ColorResources.COLOR_PRIMARY,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                '108',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    color: ColorResources.COLOR_WHITE,
                                    fontSize: 14,
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                '07',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    color: ColorResources.COLOR_WHITE,
                                    fontSize: 14,
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                '14',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    color: ColorResources.COLOR_WHITE,
                                    fontSize: 14,
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                '07',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    color: ColorResources.COLOR_PRIMARY,
                                    fontSize: 14,
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
                            color: ColorResources.COLOR_WHITE,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'View All ',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: ColorResources.COLOR_PRIMARY,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14,
                                color: ColorResources.COLOR_PRIMARY,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 130,
                      child: Stack(
                        children: [
                          ListView.builder(
                            itemCount: flashSeleData.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: showItem(index),
                              );
                            },
                          ),
                          Positioned(
                            top: 50,
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
                            top: 50,
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
              ),
              const SizedBox(
                height: 105,
              ),
              SizedBox(
                height: 320,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: bannerList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 50),
                          width: size.width * 0.33,
                          child: Image.asset(
                            bannerList[index]['image'].toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 30,
                            left: 20,
                            child: SizedBox(
                              height: 200,
                              child: Image.asset(
                                bannerList[index]['name'].toString(),
                              ),
                            ))
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                width: size.width * 0.7,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Featured Products',
                          style: style,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorResources.COLOR_PRIMARY,
                              width: 1,
                            ),
                            color: ColorResources.COLOR_WHITE,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'View All ',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: ColorResources.COLOR_PRIMARY,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14,
                                color: ColorResources.COLOR_PRIMARY,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 600,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 96, vertical: 110),
                                  decoration: BoxDecoration(
                                      color: ColorResources.COLOR_GREY,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    Images.watch,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 20,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 19, vertical: 13),
                                    decoration: BoxDecoration(
                                      color: ColorResources.COLOR_BLack,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '20% OFF',
                                      style: GoogleFonts.lato(
                                          textStyle: offerStyle),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 40, right: 40),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black54.withOpacity(0.0),
                                          Colors.black54,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 300.0,
                                              child: Text(
                                                'Lee Pucker design. Leather botinki for handsome designers. Free shipping.',
                                                style: GoogleFonts.lato(
                                                  textStyle: style.copyWith(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
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
                                          ],
                                        ),
                                        const Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '\$ 13.95',
                                              style: GoogleFonts.lato(
                                                textStyle: style.copyWith(
                                                  fontSize: 24,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '\$ 13.95',
                                              style: GoogleFonts.lato(
                                                textStyle: style.copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 12,
                                  childAspectRatio: 0.75,
                                ),
                                itemCount: gridData.length,
                                itemBuilder: (constext, index) {
                                  return Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: ColorResources.COLOR_GREY,
                                          ),
                                          padding: const EdgeInsets.all(10),
                                          child: Image.asset(
                                            gridData[index]['image'],
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${gridData[index]['des']}',
                                                style: gridStyle,
                                              ),
                                              Text(
                                                '\$ ${gridData[index]['price']}',
                                                style: GoogleFonts.lato(
                                                  textStyle: style.copyWith(
                                                    fontSize: 24,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Top Brands',
                          style: style,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorResources.COLOR_PRIMARY,
                              width: 1,
                            ),
                            color: ColorResources.COLOR_WHITE,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'View All ',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: ColorResources.COLOR_PRIMARY,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14,
                                color: ColorResources.COLOR_PRIMARY,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 110,
                      child: Stack(
                        children: [
                          ListView.builder(
                            itemCount: logos.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  height: 110,
                                  width: 110,
                                  padding: const EdgeInsets.all(30),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorResources.COLOR_ITEM_BG,
                                  ),
                                  child: Image.asset(
                                    logos[index].toString(),
                                  ),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            top: 30,
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
                            top: 30,
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
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  Images.longBanner,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Popular Products',
                          style: style,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorResources.COLOR_PRIMARY,
                              width: 1,
                            ),
                            color: ColorResources.COLOR_WHITE,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'View All ',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: ColorResources.COLOR_PRIMARY,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14,
                                color: ColorResources.COLOR_PRIMARY,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 580,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              Images.girlBanner,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 7,
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 12,
                                  childAspectRatio: 1.7,
                                ),
                                itemCount: flashSeleData.length,
                                shrinkWrap: true,
                                // dragStartBehavior: const NeverScrollableScrollPhysics(),
                                itemBuilder: (constext, index) {
                                  return Container(
                                    width: 340,
                                    decoration: const BoxDecoration(
                                      color: ColorResources.COLOR_WHITE,
                                      //color: Colors.green,
                                    ),
                                    //padding: const EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 5.0),
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              color:
                                                  ColorResources.COLOR_ITEM_BG,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Image.asset(
                                                flashSeleData[index]['image']),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
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
                                                        fontWeight:
                                                            FontWeight.w400,
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

  Widget showItem(int index) {
    return Container(
      width: 340,
      decoration: const BoxDecoration(
        color: ColorResources.COLOR_WHITE,
      ),
      padding: const EdgeInsets.all(5),
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
