import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/feature/services/presentation/blocs/gates_cubit/gates_cubit.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/resource/app_colors.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();
    return BlocProvider(
      create: (context) => sl<GatesCubit>(),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              LocaleKeys.about_us_we_offer.tr(),
              style: AppTextStyles.s16w700,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<GatesCubit, GatesState>(
            builder: (context, state) {
              return state.when(
                loading: () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AppShimmerWidget(height: 170, width: 250),
                      const SizedBox(width: 20),
                      AppShimmerWidget(height: 170, width: 250),
                    ],
                  ),
                ),
                error: (error) => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AppErrorShimmer(height: 170, width: 250),
                      const SizedBox(width: 20),
                      AppErrorShimmer(height: 170, width: 250),
                    ],
                  ),
                ),
                success: (model) => SizedBox(
                  height: 174,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    carouselController: controller,
                    itemCount: 5,
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.6077,
                      padEnds: false,
                      initialPage: 0,
                    ),
                    itemBuilder: (context, index, _) => GestureDetector(
                      onTap: () {
                        context.router.push(
                          GateInfoPageRoute(model: model[index]),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    model[index].image),
                                fit: BoxFit.cover),
                          ),
                          child: Row(
                            children: [
                              Container(
                                transformAlignment: Alignment.bottomLeft,
                                margin:
                                    const EdgeInsets.only(top: 150, left: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black.withOpacity(0.2),
                                ),
                                child: Text(
                                  model[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppTextStyles.s12w800
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 42.35,
                  width: 42.35,
                  child: CircleButtonLeft(
                    onPressed: () {
                      controller.previousPage();
                    },
                  )),
              const SizedBox(width: 50),
              CustomTextButton(
                child: Text(
                  'смотреть все',
                  style: AppTextStyles.s12w600
                      .copyWith(color: AppColors.color414141),
                ),
                onPressed: () {
                  context.router.push(const ServiceScreenRoute());
                },
              ),
              const SizedBox(width: 50),
              SizedBox(
                height: 42.35,
                width: 42.35,
                child: CircleButtonRight(
                  onPressed: () {
                    controller.nextPage();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
