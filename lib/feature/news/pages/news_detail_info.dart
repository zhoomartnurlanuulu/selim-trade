import 'package:flutter/material.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/news/data/model/news_model.dart';

class NewsDetailInfo extends StatelessWidget {
  NewsDetailInfo({super.key, required this.model});
  NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              model.title,
              style:
                  AppTextStyles.s16w700.copyWith(color: AppColors.color414141),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            model.content,
            style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
          ),
        ),
      ],
    );
  }
}
