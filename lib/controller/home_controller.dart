import 'package:get/get.dart';

class HomeController extends GetxController {
  int activeIndicator = 0;

  indicateIndex(int index) {
    activeIndicator = index;
    update();
  }
}
