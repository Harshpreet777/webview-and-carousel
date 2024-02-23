import 'dart:developer';

import 'package:animation_task/core/constants/color_constant.dart';
import 'package:animation_task/core/constants/string_constant.dart';
import 'package:animation_task/ui/widgets/common_container_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  bool isLDesktop = false;
  bool isXLDesktop = false;
  bool isXXLDesktop = false;
  changeSize(double height) {
    if (height >= 600) {
      setState(() {
        isLDesktop = true;
      });
    }
    if (height >= 800) {
      setState(() {
        isXLDesktop = true;
      });
    }
    if (height >= 900) {
      setState(() {
        isXXLDesktop = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    changeSize(height);
    log('desktop height: ${height.toString()}');
    log('desktop width: ${width.toString()}');
    return Scaffold(
      backgroundColor: ColorConstant.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    height: 300,
                    color: ColorConstant.white,
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Text(
                      StringConstants.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: ColorConstant.blue),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 0,
                    right: 0,
                    child: Text(
                      textAlign: TextAlign.center,
                      StringConstants.subTitle,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorConstant.black),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      clipBehavior: Clip.none,
                      width: width,
                      child: CarouselSlider(
                          items: [
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Ai.png',
                                title: StringConstants.aiTitle,
                                info: StringConstants.aiInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Data-Analytics.png',
                                title: StringConstants.dataTitle,
                                info: StringConstants.dataInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Digital-Automation.png',
                                title: StringConstants.digitalTitle,
                                info: StringConstants.digitalInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Cloud.png',
                                title: StringConstants.cloudTitle,
                                info: StringConstants.cloudInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Ai.png',
                                title: StringConstants.aiTitle,
                                info: StringConstants.aiInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Data-Analytics.png',
                                title: StringConstants.dataTitle,
                                info: StringConstants.dataInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Digital-Automation.png',
                                title: StringConstants.digitalTitle,
                                info: StringConstants.digitalInfo),
                            CmmContainer(
                                height: 80,
                                widths: 80,
                                titleFontSize: 18,
                                infoFontSize: 14,
                                img: 'assets/images/Cloud.png',
                                title: StringConstants.cloudTitle,
                                info: StringConstants.cloudInfo)
                          ],
                          options: CarouselOptions(
                              padEnds: false,
                              clipBehavior: Clip.none,
                              height: isXXLDesktop
                                  ? height * 0.3
                                  : isXLDesktop
                                      ? height * 0.45
                                      : isLDesktop
                                          ? height * 0.55
                                          : height * 0.7,
                              enableInfiniteScroll: true,
                              viewportFraction: 0.25)),
                    ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
