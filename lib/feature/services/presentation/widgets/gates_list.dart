import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/router/router.gr.dart';

class GatesList extends StatelessWidget {
  const GatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 1988,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 30,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                context.router.replace(GateInfoPageRoute());
              },
              child: Container(
                height: 172,
                width: 339,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(AppImages.gate), fit: BoxFit.cover),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 127, left: 6),
                      height: 20,
                      width: 246,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Text(
                          'Промышленные секционные ворота',
                          style: AppTextStyles.s12w800
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
