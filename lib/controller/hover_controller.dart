import 'package:get/get.dart';

class HoverController extends GetxController {
  bool isHovered = false;

  onEntered(bool isHovered) {
    this.isHovered = isHovered;
    update();
  }
}
