import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/blocs/gates_cubit/gates_cubit.dart';
import 'package:selim_trade/router/router.gr.dart';
import 'package:selim_trade/server/service_locator.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class OfferWidget extends StatelessWidget {
  OfferWidget({super.key});
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GatesCubit>(),
      child: SizedBox(
          height: 340,
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
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error) => Center(
                      child: Text(error.message),
                    ),
                    success: (model) => SizedBox(
                      height: 174,
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        carouselController: controller,
                        itemCount: 5,
                        options: CarouselOptions(
                          enableInfiniteScroll: false,
                          viewportFraction: 0.63,
                          padEnds: false,
                          initialPage: 0,
                        ),
                        itemBuilder: (context, index, _) => GestureDetector(
                          onTap: () {
                            context.router
                                .push(GateInfoPageRoute(model: model[index]));
                          },
                          child: Container(
                            height: 170,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(model[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 127, left: 6),
                                  height: 34,
                                  width: 135,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  child: Center(
                                    child: Text(
                                      model[index].title,
                                      style: AppTextStyles.s14w800
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
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
                  const SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                      height: 42,
                      width: 100,
                      child: CustomTextButton(
                        child: Text(
                          'смотреть все',
                          style: AppTextStyles.s12w600
                              .copyWith(color: AppColors.color414141),
                        ),
                        onPressed: () {
                          context.router.push(const ServiceScreenRoute());
                        },
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    height: 42.35,
                    width: 42.35,
                    child: CircleButtonRight(
                      onPressed: () {
                        controller.nextPage(
                            curve: Curves.bounceIn,
                            duration: const Duration(milliseconds: 200));
                      },
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
