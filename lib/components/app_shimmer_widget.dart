import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmerWidget extends StatelessWidget {
  AppShimmerWidget({super.key, this.height, this.width, this.radius = 10});
  double? height;
  double? width;
  double radius;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
          enabled: true,
          period: const Duration(seconds: 3),
          loop: 2,
          baseColor: Colors.grey[350]!,
          highlightColor: Colors.grey,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: Colors.white,
            ),
          )),
    );
  }
}
