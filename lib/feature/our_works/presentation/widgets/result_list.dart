import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';

class ResultList extends StatelessWidget {
  const ResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2240,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Container(
          width: 320,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(AppImages.results),
              fit: BoxFit.fill,
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 10,
      ),
    );
  }
}
