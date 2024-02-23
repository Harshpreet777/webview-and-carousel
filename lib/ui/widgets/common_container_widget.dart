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
      required this.titleFontSize,
      required this.infoFontSize});
  String img;
  String title;
  String info;
  double height;
  double widths;
  double titleFontSize;
  double infoFontSize;

  @override
  State<CmmContainer> createState() => _CmmContainerState();
}

class _CmmContainerState extends State<CmmContainer> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
      child: Container(
        width: screenWidth * 0.7,
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.025, vertical: screenHeight * 0.01),
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            SizedBox(
              height: screenHeight * 0.007,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.title,
                style: TextStyle(
                    color: ColorConstant.white,
                    fontSize: widget.titleFontSize,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.info,
                style: TextStyle(
                    color: ColorConstant.white54,
                    fontSize: widget.infoFontSize,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
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
                        fontSize: widget.infoFontSize,
                        fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
