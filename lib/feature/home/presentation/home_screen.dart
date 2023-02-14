// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:selim_trade/core/app_images.dart';
import 'widgets/about_us.dart';
import 'widgets/custom_sliver_appbar.dart';
import 'widgets/offer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        physics: const ClampingScrollPhysics(),
        slivers: [
          CustomSliverAppBar(
            controller: controller,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const AboutUs(),
                const OfferWidget(),
                Container(
                  width: double.infinity,
                  height: 417,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          AppImages.fourthBackground,
                        ),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
