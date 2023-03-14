import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/our_works/presentation/blocs/our_works_cubit/our_works_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class OurWorksWidgets extends StatelessWidget {
  const OurWorksWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = PageController(initialPage: 0, viewportFraction: 0.7);
    return BlocProvider(
      create: (context) => sl<OurWorksCubit>(),
      child: Column(
        children: [
          Center(
            child: Text(
              LocaleKeys.about_us_our_works.tr(),
              style: AppTextStyles.s16w700,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          BlocBuilder<OurWorksCubit, OurWorksState>(
            builder: (context, state) {
              return state.when(
                loading: () => AppShimmerWidget(
                  height: 250,
                  width: 300,
                ),
                error: (error) => Center(
                  child: Text(error.message),
                ),
                success: (model) => SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: PageView.builder(
                    pageSnapping: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: ctrl,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return AnimatedBuilder(
                        animation: ctrl,
                        builder: (context, child) {
                          double value = 1.0;
                          if (ctrl.position.haveDimensions) {
                            value = ctrl.page! - index;
                            value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
                          } else if (index != 0) {
                            value = 0.5;
                          }

                          return Padding(
                            padding: EdgeInsets.all(50 - value * 50),
                            child: child,
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.96),
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    model[index].image!),
                                fit: BoxFit.fill),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
