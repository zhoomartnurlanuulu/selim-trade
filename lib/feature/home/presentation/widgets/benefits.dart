import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/benifits_cubit/benifits_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BenifitsCubit>(),
      child: SizedBox(
        height: 234,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                LocaleKeys.about_us_our_benifits.tr(),
                style: AppTextStyles.s16w700
                    .copyWith(color: AppColors.color414141),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            BlocBuilder<BenifitsCubit, BenifitsState>(
              builder: (context, state) {
                return state.when(
                  loading: () => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AppShimmerWidget(
                          height: 123,
                          width: 225,
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        AppShimmerWidget(
                          height: 123,
                          width: 225,
                        )
                      ],
                    ),
                  ),
                  error: (error) => Center(
                    child: Text(error.message),
                  ),
                  success: (model) => Expanded(
                    child: ListView.separated(
                        clipBehavior: Clip.none,
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: 225,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  model[index].icon!,
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  model[index].title!,
                                  style: AppTextStyles.s14w600,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemCount: model.length),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
