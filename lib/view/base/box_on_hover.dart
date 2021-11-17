import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexacom/controller/hover_controller.dart';
import 'package:hexacom/util/color_resources.dart';

class BoxOnHover extends StatefulWidget {
  final Widget? child;
  BoxOnHover({Key? key, this.child}) : super(key: key);

  @override
  State<BoxOnHover> createState() => _BoxOnHoverState();
}

class _BoxOnHoverState extends State<BoxOnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoverTransformed = Matrix4.identity()..scale(1.1, 1.1);
    final transform = isHovered ? hoverTransformed : Matrix4.identity();
    final shedow1 = BoxDecoration(boxShadow: [
      BoxShadow(
        color: ColorResources.COLOR_SHADOW.withOpacity(0.1),
        blurRadius: 10,
        offset: Offset(0, 3),
      )
    ]);
    final shedow2 = BoxDecoration(boxShadow: [
      BoxShadow(
        color: ColorResources.COLOR_SHADOW.withOpacity(0),
        blurRadius: 0,
        offset: Offset(0, 0),
      )
    ]);
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        decoration: isHovered ? shedow1 : shedow2,
        duration: const Duration(milliseconds: 200),
        // transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
