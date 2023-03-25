import 'package:flutter/material.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/feature/home/presentation/widgets/about_us.dart';
import 'package:selim_trade/feature/home/presentation/widgets/benefits.dart';
import 'package:selim_trade/feature/home/presentation/widgets/last_news_widget.dart';
import 'package:selim_trade/feature/home/presentation/widgets/offer.dart';

class MainSliverDelegate extends StatelessWidget {
  const MainSliverDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.mainBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AboutUs(),
          OfferWidget(),
          Benefits(),
          LastNewsWidget(),
          SizedBox(height: 60)
        ],
      ),
    );
  }
}
