import 'package:flutter/material.dart';
import 'package:hexacom/util/color_resources.dart';
import 'package:hexacom/util/images.dart';

class MobileAppBr extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: ColorResources.COLOR_PRIMARY,
      width: double.infinity,
      height: 50,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 12,
            width: 18,
            child: Image.asset(Images.categories_logo),
          ),
          const Spacer(),
          SizedBox(
            height: 30,
            // padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(Images.hexaCom_logo),
          ),
          const Spacer(),
          SizedBox(
            height: 16,
            child: Image.asset(Images.cart_logo),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 50);
}
