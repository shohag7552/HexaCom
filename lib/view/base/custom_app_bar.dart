import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexacom/util/color_resources.dart';
import 'package:hexacom/util/images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: ColorResources.COLOR_PRIMARY,
      width: double.infinity,
      height: 94,
      child: Row(
        children: [
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset(Images.hexaCom_logo),
          ),
          const SizedBox(
            width: 23,
          ),
          categoriesStyle(Images.categories_logo, 'Categories'),
          const SizedBox(
            width: 20,
          ),
          categoriesStyle(Images.brand_logo, 'Brands'),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: ColorResources.COLOR_WHITE,
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Whatever You Need',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: ColorResources.COLOR_PRIMARY,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Container(
                        height: 16,
                        child: Image.asset(Images.search_logo),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categoriesStyle(String? icon, String? name) {
    return Row(
      children: [
        SizedBox(
          height: 16,
          width: 18,
          child: Image.asset(icon!),
        ),
        const SizedBox(
          width: 13,
        ),
        Text(
          name!,
          style: const TextStyle(
            color: ColorResources.COLOR_WHITE,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 94);
}
