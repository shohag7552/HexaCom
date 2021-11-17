import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexacom/controller/home_controller.dart';
import 'package:hexacom/data/repository/data_list.dart';
import 'package:hexacom/util/color_resources.dart';
import 'package:hexacom/util/images.dart';
import 'package:hexacom/util/style.dart';
import 'package:hexacom/view/base/mobile_custom_appbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MobileView extends StatelessWidget {
  MobileView({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      backgroundColor: ColorResources.COLOR_WHITE,
      appBar: const MobileAppBr(),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                sliderPortion2(size),
                const SizedBox(
                  height: 47,
                ),
                featuredProductsPortion(size),
                const SizedBox(
                  height: 25,
                ),
                topBrandsPortion(size),
                const SizedBox(
                  height: 20,
                ),

                ///Banner..
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset(
                    Images.longBanner,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                popularProductsPortion(size),
                const SizedBox(
                  height: 25,
                ),
                topSallersPortion(size),
                const SizedBox(
                  height: 20,
                ),
                newArrivalePortion(size),

                ///Banner..
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Image.asset(
                    Images.downBanner,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                featuredCategoriesPortion(size),
                const SizedBox(
                  height: 50,
                ),
                bottomPortion(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget bottomPortion() {
    return Container(
      color: ColorResources.COLOR_TEXT,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Newsletter',
                  style: bottomBigTextStyle.copyWith(fontSize: 20),
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  'Sign up for our e-mail to get latest news',
                  style: bottomSmallTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 47,
                  width: double.infinity,
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
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 24,
                      child: Image.asset(Images.twiter),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 20,
                      width: 24,
                      child: Image.asset(Images.facebook),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 20,
                      width: 24,
                      child: Image.asset(Images.instragram),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 0.05,
            color: ColorResources.COLOR_WHITE,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Account',
                  style: bottomBigTextStyle.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'WishList',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Contact Us',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'My Account',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'About Us',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Privacy Policy',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          const Divider(
            height: 0.1,
            color: ColorResources.COLOR_WHITE,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EXTRAS',
                  style: bottomBigTextStyle.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Checkout',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Cart',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Shop',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'About Us',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Privacy Policy',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          const Divider(
            height: 0.1,
            color: ColorResources.COLOR_WHITE,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'QUICK LINKS',
                  style: bottomBigTextStyle.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Camera & Photos',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Computers & Laptops',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Home Audio',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Mobile & Tablets',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Smart Phone',
                  style: bottomMediumTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget featuredCategoriesPortion(Size size) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Categories',
            style: style.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 150,
                width: size.width * 9,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: ColorResources.COLOR_TEXT, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 22, bottom: 13),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bagList.length,
                  itemBuilder: (context, index) {
                    return customListItem(bagList, index);
                  },
                ),
              ),
              Positioned(
                top: -15,
                left: 15,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorResources.COLOR_WHITE,
                  ),
                  child: Text(
                    'Bags',
                    style: style.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 1,
                top: 1,
                bottom: 1,
                child: Container(
                  width: 24,
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
                      size: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 150,
                width: size.width * 9,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: ColorResources.COLOR_TEXT, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 22, bottom: 13),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shoeList.length,
                  itemBuilder: (context, index) {
                    return customListItem(shoeList, index);
                  },
                ),
              ),
              Positioned(
                top: -15,
                left: 15,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorResources.COLOR_WHITE,
                  ),
                  child: Text(
                    'Shoes',
                    style: style.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 1,
                top: 1,
                bottom: 1,
                child: Container(
                  width: 24,
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
                      size: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 150,
                width: size.width * 9,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: ColorResources.COLOR_TEXT, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 22, bottom: 13),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: watchList.length,
                  itemBuilder: (context, index) {
                    return customListItem(watchList, index);
                  },
                ),
              ),
              Positioned(
                top: -15,
                left: 15,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorResources.COLOR_WHITE,
                  ),
                  child: Text(
                    'Watches',
                    style: style.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 1,
                top: 1,
                bottom: 1,
                child: Container(
                  width: 24,
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
                      size: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 150,
                width: size.width * 9,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: ColorResources.COLOR_TEXT, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(top: 22, bottom: 13),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moneybagList.length,
                  itemBuilder: (context, index) {
                    return customListItem(moneybagList, index);
                  },
                ),
              ),
              Positioned(
                top: -15,
                left: 15,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorResources.COLOR_WHITE,
                  ),
                  child: Text(
                    'Wallet',
                    style: style.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 1,
                top: 1,
                bottom: 1,
                child: Container(
                  width: 24,
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
                      size: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customListItem(List<Map<String, dynamic>> data, int index) {
    return Container(
      width: 98,
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
              //padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: ColorResources.COLOR_WHITE,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data[index]['weight']}',
                    style: gridStyle.copyWith(fontSize: 10),
                  ),
                  Text(
                    '${data[index]['quantity']}',
                    style: gridStyle.copyWith(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$ ${data[index]['price']}',
                        style: gridStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: ColorResources.COLOR_PRIMARY,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '\$ ${data[index]['discount']}',
                        style: gridStyle.copyWith(
                          color: ColorResources.COLOR_TEXT.withOpacity(0.8),
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
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

  Widget newArrivalePortion(Size size) {
    return SizedBox(
      width: size.width * 0.95,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'New Arrivals',
                  style: style.copyWith(fontSize: 16),
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
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage(Images.banner4),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.7,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: newArrivalData.length,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  child: Column(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${newArrivalData[index]['des']}',
                              style: gridStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$ ${newArrivalData[index]['price']}',
                              style: GoogleFonts.lato(
                                textStyle: style.copyWith(
                                  fontSize: 18,
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
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }

  Widget topSallersPortion(Size size) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Top Sallers',
                style: style.copyWith(fontSize: 16),
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
            height: 16,
          ),
          SizedBox(
            height: 60,
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
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              topSells[index]['image'].toString(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget popularProductsPortion(Size size) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Popular Products',
                style: style.copyWith(fontSize: 16),
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
            height: 16,
          ),
          Container(
            height: 480,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage(Images.girlBanner),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            itemCount: flashSeleData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                // width: 340,
                height: 158,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: ColorResources.COLOR_WHITE,
                  boxShadow: [
                    BoxShadow(
                      color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(13),
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
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '****** 4.56',
                            style: GoogleFonts.lato(
                              textStyle: style.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$${flashSeleData[index]['price']}',
                            style: GoogleFonts.lato(
                              textStyle: style.copyWith(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${flashSeleData[index]['old_price']}',
                                style: GoogleFonts.lato(
                                  textStyle: style.copyWith(
                                    fontSize: 10,
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
                                    fontSize: 10,
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
            },
          )
        ],
      ),
    );
  }

  Widget topBrandsPortion(Size size) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Top Brands',
                style: style.copyWith(fontSize: 16),
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
            height: 16,
          ),
          SizedBox(
            height: 80,
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: logos.length,
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 110,
                        width: 110,
                        padding: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorResources.COLOR_ITEM_BG,
                        ),
                        child: Image.asset(
                          logos[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget featuredProductsPortion(Size size) {
    return SizedBox(
      width: size.width * 0.95,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Featured Products',
                  style: style.copyWith(fontSize: 16),
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
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    //height: ,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 40),
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
                          horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: ColorResources.COLOR_BLack,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '20% OFF',
                        style: GoogleFonts.lato(
                          textStyle: offerStyle.copyWith(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100,
                      padding:
                          const EdgeInsets.only(top: 30, left: 10, right: 10),
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
                                width: 200.0,
                                child: Text(
                                  'Lee Pucker design. Leather botinki for handsome designers. Free shipping.',
                                  style: GoogleFonts.lato(
                                    textStyle: style.copyWith(
                                      fontSize: 12,
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
                                    fontSize: 20,
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
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.7,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: gridData.length,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  child: Column(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${gridData[index]['des']}',
                              style: gridStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$ ${gridData[index]['price']}',
                              style: GoogleFonts.lato(
                                textStyle: style.copyWith(
                                  fontSize: 18,
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
                    ],
                  ),
                );
              })
        ],
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
            height: 10,
          ),
          SizedBox(
            height: 170,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: flashSeleData.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: size.width * 0.9,
                  margin: const EdgeInsets.symmetric(vertical: 10),
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
              },
              options: CarouselOptions(
                // autoPlay: true,
                enlargeCenterPage: true,
                //autoPlayInterval: const Duration(seconds: 4),
                reverse: false,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  homeController.flashindicateIndex(index);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          flashSaleIndicator(),
        ],
      ),
    );
  }

  Widget flashSaleIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: homeController.flashIndicator,
      count: flashSeleData.length,
      effect: ScrollingDotsEffect(
        activeDotColor: ColorResources.COLOR_PRIMARY,
        dotColor: ColorResources.COLOR_PRIMARY.withOpacity(0.5),
        dotHeight: 5,
        dotWidth: 5,
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
              final image = bannerList[index]['image'];
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
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 6),
              viewportFraction: 0.85,
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
        dotHeight: 5,
        dotWidth: 5,
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
