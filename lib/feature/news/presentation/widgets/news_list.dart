import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1500,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: Container(
                  height: 223,
                  width: 328,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(AppImages.newsImage),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 257,
                          child: Text(
                            'РАСШИРЕНИЕ ДИЗАЙНА ВОРОТ СТАДНАРТНОЙ СЕРИИ RSD01SC BIW',
                            style: AppTextStyles.s14p91w800
                                .copyWith(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ]),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 30,
              ),
          itemCount: 6),
    );
  }
}
