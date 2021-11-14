import 'package:flutter/material.dart';
import 'package:hexacom/view/base/custom_app_bar.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          // CustomAppBar(),
        ],
      ),
    );
  }
}
