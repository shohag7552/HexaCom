import 'package:flutter/material.dart';
import 'package:hexacom/view/base/custom_app_bar.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container()
        ],
      ),
    );
  }
}
