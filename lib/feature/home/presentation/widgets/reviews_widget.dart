import 'package:flutter/material.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class ReviewsWidget extends StatelessWidget {
  ReviewsWidget({super.key});
  final controller = ScrollController();
  int itemCount = 4;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 327,
      child: Column(
        children: [
          Center(
            child: Text(
              'Отзывы наших клиентов',
              style: AppTextStyles.s16w700.copyWith(
                color: AppColors.color414141,
              ),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Expanded(
            child: ListView.separated(
              controller: controller,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Container(
                    width: 241,
                    height: 151,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.reviewBack),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.9,
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80'),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Улан Султанов',
                                  style: AppTextStyles.s14w600,
                                ),
                                Text(
                                  'ворота атоматические',
                                  style: AppTextStyles.s11w600,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            'Ворота стоят уже более двух лет. За это время с ними не было \nникаких проблем. Спасибо, Selim \nTrade!',
                            style: AppTextStyles.s12w400)
                      ]),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: itemCount,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 44.59,
                width: 44.59,
                child: CircleButtonLeft(onPressed: () {}),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                height: 44.59,
                width: 44.59,
                child: CircleButtonRight(onPressed: () {}),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
