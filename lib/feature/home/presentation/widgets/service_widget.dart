import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/services_cubit/services_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ServicesCubit>(),
      child: Column(
        children: [
          Center(
            child: Text(
              LocaleKeys.about_us_services.tr(),
              style: AppTextStyles.s16w700.copyWith(
                color: AppColors.color414141,
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          BlocBuilder<ServicesCubit, ServicesState>(
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
                      const SizedBox(width: 20),
                      AppShimmerWidget(
                        height: 123,
                        width: 225,
                      )
                    ],
                  ),
                ),
                error: (error) => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AppErrorShimmer(
                        height: 123,
                        width: 225,
                      ),
                      const SizedBox(width: 20),
                      AppErrorShimmer(
                        height: 123,
                        width: 225,
                      )
                    ],
                  ),
                ),
                success: (model) => SingleChildScrollView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      children: model.map((model) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1.5,
                                blurRadius: 3),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 123,
                        width: 225,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.network(
                              model.icon,
                              height: 44,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              model.title,
                              style: AppTextStyles.s12w600,
                              softWrap: true,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList()),
                ),
              );
            },
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
