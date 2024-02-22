import 'dart:developer';

import 'package:animation_task/core/constants/color_constant.dart';
import 'package:animation_task/core/constants/string_constant.dart';
import 'package:animation_task/ui/widgets/common_container_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    log(height.toString());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  StringConstants.title,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.blue),
                ),
                Text(
                  textAlign: TextAlign.center,
                  StringConstants.subTitle,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.white),
                ),
                Stack(children: [
                  Container(
                    height: height * 0.3,
                    color: ColorConstant.black,
                  ),
                  SizedBox(
                    width: width,
                    child: CarouselSlider(
                        items: [
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Ai.png',
                              title: StringConstants.aiTitle,
                              info: StringConstants.aiInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Data-Analytics.png',
                              title: StringConstants.dataTitle,
                              info: StringConstants.dataInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Digital-Automation.png',
                              title: StringConstants.digitalTitle,
                              info: StringConstants.digitalInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Cloud.png',
                              title: StringConstants.cloudTitle,
                              info: StringConstants.cloudInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Ai.png',
                              title: StringConstants.aiTitle,
                              info: StringConstants.aiInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Data-Analytics.png',
                              title: StringConstants.dataTitle,
                              info: StringConstants.dataInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Digital-Automation.png',
                              title: StringConstants.digitalTitle,
                              info: StringConstants.digitalInfo),
                          CmmContainer(
                              height: 110,
                              widths: 110,
                              fontSize: 30,
                              img: 'assets/images/Cloud.png',
                              title: StringConstants.cloudTitle,
                              info: StringConstants.cloudInfo)
                        ],
                        options: CarouselOptions(
                          padEnds: true,
                          clipBehavior: Clip.none,
                          height: height,
                          enableInfiniteScroll: true,
                        )),
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
