import 'package:flutter/material.dart';

import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/feature/home/presentation/widgets/custom_fliexble_space.dart';

import 'pop_up_menu_item.dart';

class CustomSliverAppBar extends StatelessWidget {
  CustomSliverAppBar({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final scrolled = constraints.scrollOffset > 260;
        return SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          centerTitle: false,
          title: scrolled
              ? Image.asset(
                  AppImages.logoBlack,
                  height: 39,
                )
              : Image.asset(
                  AppImages.logo,
                  height: 39,
                ),
          actions: [
            CustomPopUp(
              constraints: constraints,
            )
          ],
          backgroundColor: Colors.white,
          elevation: 1.5,
          expandedHeight: 366,
          toolbarHeight: 50,
          flexibleSpace: CustomFliexbleSpace(
            controller: controller,
          ),
        );
      },
    );
  }
}
