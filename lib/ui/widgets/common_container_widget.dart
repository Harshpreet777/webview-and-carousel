import 'package:animation_task/core/constants/color_constant.dart';
import 'package:animation_task/core/constants/string_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CmmContainer extends StatefulWidget {
  CmmContainer(
      {super.key,
      required this.img,
      required this.title,
      required this.info,
      required this.height,
      required this.widths,
      required this.fontSize});
  String img;
  String title;
  String info;
  double height;
  double widths;
  double fontSize;

  @override
  State<CmmContainer> createState() => _CmmContainerState();
}

class _CmmContainerState extends State<CmmContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: widget.height,
              width: widget.widths,
              child: Image.asset(
                widget.img,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.title,
              style: TextStyle(
                  color: ColorConstant.white,
                  fontSize: widget.fontSize,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.info,
              style: TextStyle(
                  color: ColorConstant.white54,
                  fontSize: widget.fontSize,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  StringConstants.learnMore,
                  style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: widget.fontSize,
                      fontWeight: FontWeight.w300),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: ColorConstant.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
