import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hexacom/view/screens/home/widgets.dart/mobile_view.dart';
import 'package:hexacom/view/screens/home/widgets.dart/web_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      log(constraints.maxWidth.toString());
      if (constraints.maxWidth > 1587) {
        return WebView();
      } else {
        return MobileView();
      }
    });
  }
}
