import 'dart:developer';

import 'package:animation_task/core/constants/color_constant.dart';
import 'package:animation_task/core/constants/string_constant.dart';
import 'package:animation_task/ui/widgets/common_container_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  bool isLMobile = false;
  bool isXLMobile = false;
  bool isXXLMobile = false;
  bool isMMobile = false;

  changeSize(double height) {
    if (height >= 500) {
      setState(() {
        isMMobile = true;
      });
    }
    if (height > 600) {
      setState(() {
        isLMobile = true;
      });
    }
    if (height > 800) {
      setState(() {
        isXLMobile = true;
      });
      if (height > 900) {
        setState(() {
          isXXLMobile = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    changeSize(height);
    log('mobile height: ${height.toString()}');
    log('mobile width: ${width.toString()}');
    return Scaffold(
      backgroundColor: ColorConstant.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 200,
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
                            fontSize: 16,
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
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstant.black),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: SizedBox(
                        width: width,
                        child: CarouselSlider(
                            items: [
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 10,
                                  img: 'assets/images/Ai.png',
                                  title: StringConstants.aiTitle,
                                  info: StringConstants.aiInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Data-Analytics.png',
                                  title: StringConstants.dataTitle,
                                  info: StringConstants.dataInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Digital-Automation.png',
                                  title: StringConstants.digitalTitle,
                                  info: StringConstants.digitalInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Cloud.png',
                                  title: StringConstants.cloudTitle,
                                  info: StringConstants.cloudInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Ai.png',
                                  title: StringConstants.aiTitle,
                                  info: StringConstants.aiInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Data-Analytics.png',
                                  title: StringConstants.dataTitle,
                                  info: StringConstants.dataInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Digital-Automation.png',
                                  title: StringConstants.digitalTitle,
                                  info: StringConstants.digitalInfo),
                              CmmContainer(
                                  height: 60,
                                  widths: 60,
                                  titleFontSize: 14,
                                  infoFontSize: 13,
                                  img: 'assets/images/Cloud.png',
                                  title: StringConstants.cloudTitle,
                                  info: StringConstants.cloudInfo)
                            ],
                            options: CarouselOptions(
                                padEnds: false,
                                height: isXXLMobile
                                    ? height * 0.22
                                    : isXLMobile
                                        ? height * 0.25
                                        : isLMobile
                                            ? height * 0.3
                                            : height * 0.4,
                                enableInfiniteScroll: true,
                                viewportFraction: 1)),
                      ),
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
