import 'package:animation_task/ui/views/desktop_view.dart';
import 'package:animation_task/ui/views/mobile_view.dart';
import 'package:animation_task/ui/views/responsive_view.dart';
import 'package:animation_task/ui/views/tablet_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return  SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: height,
          child: const Responsive(
              desktop: DesktopView(),
              mobile: MobileView(),
              tablet: TabletView()),
        ),
      ]),
    );
  }
}
