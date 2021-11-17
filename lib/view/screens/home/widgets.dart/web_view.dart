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
import 'package:hexacom/view/base/box_on_hover.dart';
import 'package:hexacom/view/base/custom_app_bar.dart';
import 'package:hexacom/view/base/on_hover.dart';
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
              popularCategoryPortion(size),
              const SizedBox(
                height: 30,
              ),
              flashSalePortion(size),
              const SizedBox(
                height: 105,
              ),

              ///Banner..
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
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              featuredProductsPortion(size),
              const SizedBox(
                height: 50,
              ),
              topBrandsPortion(size),
              const SizedBox(
                height: 90,
              ),

              ///Banner..
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
              popularProductsPortion(size),
              const SizedBox(
                height: 90,
              ),

              ///Banner..
              SizedBox(
                height: 323,
                width: double.infinity,
                child: Image.asset(
                  Images.downBanner,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              featuredCategoriesPortion(size),
              const SizedBox(
                height: 100,
              ),
              bottomPortion(),
            ],
          ),
        );
      }),
    );
  }

  Container bottomPortion() {
    return Container(
      height: 466,
      width: double.infinity,
      color: ColorResources.COLOR_TEXT,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Newsletter',
                    style: bottomBigTextStyle,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Sign up for our e-mail to get latest news',
                    style: bottomSmallTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 47,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorResources.COLOR_WHITE,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Your Email Address',
                                hintStyle:
                                    TextStyle(color: ColorResources.COLOR_GREY),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: ColorResources.COLOR_PRIMARY,
                            ),
                            child: Center(
                              child: Text(
                                'Subscribe!',
                                style: bottomSmallTextStyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 24,
                        child: Image.asset(Images.twiter),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                        height: 20,
                        width: 24,
                        child: Image.asset(Images.facebook),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                        height: 20,
                        width: 24,
                        child: Image.asset(Images.instragram),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        'My Account',
                        style: bottomBigTextStyle,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'WishList',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Contact Us',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'My Account',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'About Us',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Privacy Policy',
                        style: bottomMediumTextStyle,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        'EXTRAS',
                        style: bottomBigTextStyle,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Checkout',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Cart',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Shop',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'About Us',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Privacy Policy',
                        style: bottomMediumTextStyle,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        'QUICK LINKS',
                        style: bottomBigTextStyle,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Camera & Photos',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Computers & Laptops',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Home Audio',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Mobile & Tablets',
                        style: bottomMediumTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Smart Phone',
                        style: bottomMediumTextStyle,
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget featuredCategoriesPortion(Size size) {
    return SizedBox(
      width: size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Categories',
            style: style,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 300,
                    width: size.width * 0.34,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorResources.COLOR_TEXT, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(top: 45, bottom: 25),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bagList.length,
                      itemBuilder: (context, index) {
                        return customListItem(bagList, index);
                      },
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorResources.COLOR_WHITE,
                      ),
                      child: Text(
                        'Bags',
                        style: style,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 1,
                    bottom: 1,
                    child: Container(
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: ColorResources.COLOR_BLue,
                        boxShadow: [
                          BoxShadow(
                            color: ColorResources.COLOR_GREY.withOpacity(0.8),
                            blurRadius: 10,
                            offset: const Offset(-3, 0),
                          )
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 300,
                    width: size.width * 0.34,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorResources.COLOR_TEXT, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(top: 45, bottom: 25),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: shoeList.length,
                      itemBuilder: (context, index) {
                        return customListItem(shoeList, index);
                      },
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorResources.COLOR_WHITE,
                      ),
                      child: Text(
                        'Shoes',
                        style: style,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 1,
                    bottom: 1,
                    child: Container(
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: ColorResources.COLOR_BLue,
                        boxShadow: [
                          BoxShadow(
                            color: ColorResources.COLOR_GREY.withOpacity(0.8),
                            blurRadius: 10,
                            offset: const Offset(-3, 0),
                          )
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 300,
                    width: size.width * 0.34,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorResources.COLOR_TEXT, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(top: 45, bottom: 25),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: watchList.length,
                      itemBuilder: (context, index) {
                        return customListItem(watchList, index);
                      },
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorResources.COLOR_WHITE,
                      ),
                      child: Text(
                        'Watches',
                        style: style,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 1,
                    bottom: 1,
                    child: Container(
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: ColorResources.COLOR_BLue,
                        boxShadow: [
                          BoxShadow(
                            color: ColorResources.COLOR_GREY.withOpacity(0.8),
                            blurRadius: 10,
                            offset: const Offset(-3, 0),
                          )
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 300,
                    width: size.width * 0.34,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorResources.COLOR_TEXT, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(top: 45, bottom: 25),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: moneybagList.length,
                      itemBuilder: (context, index) {
                        return customListItem(moneybagList, index);
                      },
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorResources.COLOR_WHITE,
                      ),
                      child: Text(
                        'Wallet',
                        style: style,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: ColorResources.COLOR_BLue,
                        boxShadow: [
                          BoxShadow(
                            color: ColorResources.COLOR_GREY.withOpacity(0.8),
                            blurRadius: 10,
                            offset: const Offset(-3, 0),
                          )
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox popularProductsPortion(Size size) {
    return SizedBox(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
                                  child: Image.asset(
                                      flashSeleData[index]['image']),
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
                                              decoration:
                                                  TextDecoration.lineThrough,
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
                ),
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
                      'Top Sellers',
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
                  height: 180,
                  child: Stack(
                    children: [
                      ListView.builder(
                        itemCount: topSells.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  // padding: const EdgeInsets.all(20),
                                  // decoration: const BoxDecoration(
                                  //   shape: BoxShape.circle,
                                  //   color: ColorResources
                                  //       .COLOR_ITEM_BG,
                                  // ),
                                  child: Image.asset(
                                    topSells[index]['image'].toString(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  topSells[index]['name'].toString(),
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
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: size.width * 0.7,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'New Arrivals',
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
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: newArrivalData.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
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
                                  newArrivalData[index]['image'],
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${newArrivalData[index]['des']}',
                                      style: gridStyle,
                                    ),
                                    Text(
                                      '\$ ${newArrivalData[index]['price']}',
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
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox topBrandsPortion(Size size) {
    return SizedBox(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
                  itemCount: logos.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OnHover(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        margin: const EdgeInsets.only(bottom: 20),
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
                          color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
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
                          color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
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
    );
  }

  SizedBox featuredProductsPortion(Size size) {
    return SizedBox(
      width: size.width * 0.7,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
                            style: GoogleFonts.lato(textStyle: offerStyle),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                        decoration: TextDecoration.lineThrough,
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
                        childAspectRatio: 0.7,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }

  SizedBox flashSalePortion(Size size) {
    return SizedBox(
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
            height: 180,
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: flashSeleData.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: BoxOnHover(child: showItem(index)),
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
                          color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
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
                          color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
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
    );
  }

  Widget popularCategoryPortion(Size size) {
    return SizedBox(
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
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          OnHover(
                            child: Container(
                              height: 150,
                              width: 150,
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.COLOR_ITEM_BG,
                              ),
                              child: Image.asset(
                                popularCategories[index]['image'].toString(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            popularCategories[index]['name'].toString(),
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
                          color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
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
                          color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
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
    );
  }

  Widget customListItem(List<Map<String, dynamic>> data, int index) {
    return Container(
      width: 195,
      margin: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorResources.COLOR_WHITE,
        border: Border.all(
          color: ColorResources.COLOR_GREY,
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: ColorResources.COLOR_GREY,
              ),
              child: Image.asset(
                data[index]['image'],
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: ColorResources.COLOR_WHITE,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data[index]['weight']}',
                    style: gridStyle,
                  ),
                  Text(
                    '${data[index]['quantity']}',
                    style: gridStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$ ${data[index]['price']}',
                        style: gridStyle.copyWith(
                          fontWeight: FontWeight.w800,
                          color: ColorResources.COLOR_PRIMARY,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$ ${data[index]['discount']}',
                        style: gridStyle.copyWith(
                          color: ColorResources.COLOR_TEXT.withOpacity(0.8),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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
