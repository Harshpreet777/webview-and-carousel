import 'dart:developer';

import 'package:animation_task/core/constants/color_constant.dart';
import 'package:animation_task/core/constants/string_constant.dart';
import 'package:animation_task/ui/widgets/common_container_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  bool isLTab = false;
  bool isXLTab = false;
  bool isXXLTab = false;
  changeSize(double height) {
    if (height > 600) {
      setState(() {
        isLTab = true;
      });
    }
    if (height >= 800) {
      setState(() {
        isXLTab = true;
      });
    }
    if (height > 1000) {
      setState(() {
        isXXLTab = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    changeSize(height);
    log('tablet height: ${height.toString()}');
    log('tablet width: ${width.toString()}');

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
                    height: 250,
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
                          fontSize: 18,
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
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ColorConstant.black),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      clipBehavior: Clip.none,
                      width: width,
                      child: CarouselSlider(
                          items: [
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Ai.png',
                                title: StringConstants.aiTitle,
                                info: StringConstants.aiInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Data-Analytics.png',
                                title: StringConstants.dataTitle,
                                info: StringConstants.dataInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Digital-Automation.png',
                                title: StringConstants.digitalTitle,
                                info: StringConstants.digitalInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Cloud.png',
                                title: StringConstants.cloudTitle,
                                info: StringConstants.cloudInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Ai.png',
                                title: StringConstants.aiTitle,
                                info: StringConstants.aiInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Data-Analytics.png',
                                title: StringConstants.dataTitle,
                                info: StringConstants.dataInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Digital-Automation.png',
                                title: StringConstants.digitalTitle,
                                info: StringConstants.digitalInfo),
                            CmmContainer(
                                height: 70,
                                widths: 70,
                                titleFontSize: 16,
                                infoFontSize: 14,
                                img: 'assets/images/Cloud.png',
                                title: StringConstants.cloudTitle,
                                info: StringConstants.cloudInfo)
                          ],
                          options: CarouselOptions(
                              padEnds: false,
                              clipBehavior: Clip.none,
                              height: isXXLTab
                                  ? height * 0.3
                                  : isXLTab
                                      ? height * 0.42
                                      : isLTab
                                          ? height * 0.53
                                          : height * 0.65,
                              enableInfiniteScroll: true,
                              viewportFraction: 0.336)),
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
