import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 102,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: AppColors.color001645))),
                    onPressed: () {},
                    child: Text(
                      'все',
                      style: AppTextStyles.s14w300
                          .copyWith(color: AppColors.color001645),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 149,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: AppColors.color001645))),
                    onPressed: () {},
                    child: Text(
                      'автоматика',
                      style: AppTextStyles.s14w300
                          .copyWith(color: AppColors.color001645),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 116,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: AppColors.color001645))),
                    onPressed: () {},
                    child: Text(
                      'ворота',
                      style: AppTextStyles.s14w300
                          .copyWith(color: AppColors.color001645),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 102,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: AppColors.color001645))),
                    onPressed: () {},
                    child: Text(
                      'жалюзи',
                      style: AppTextStyles.s14w300
                          .copyWith(color: AppColors.color001645),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}