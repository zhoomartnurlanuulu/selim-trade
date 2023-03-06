import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/reviews_cubit/reviews_cubit.dart';
import 'package:selim_trade/server/service_locator.dart';
import 'package:selim_trade/theme/app_colors.dart';

class ReviewsWidget extends StatelessWidget {
  ReviewsWidget({super.key});
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ReviewsCubit>(),
      child: SizedBox(
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
            BlocBuilder<ReviewsCubit, ReviewsState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.color105BFB,
                    ),
                  ),
                  error: (error) => Center(child: Text(error.message)),
                  success: (model) => SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      carouselController: controller,
                      options: CarouselOptions(
                        padEnds: false,
                        viewportFraction: 0.6,
                        enableInfiniteScroll: false,
                      ),
                      itemBuilder: (context, index, _) {
                        return SizedBox(
                          child: Container(
                            width: 241,
                            height: 151,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.reviewBack),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 25.9,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 26,
                                        backgroundImage:
                                            CachedNetworkImageProvider(
                                                model[index].image),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${model[index].name} ${model[index].surname}",
                                            style: AppTextStyles.s14w600,
                                          ),
                                          Text(
                                            model[index].title,
                                            style: AppTextStyles.s11w600,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(model[index].content,
                                      style: AppTextStyles.s12w400)
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: model.length,
                    ),
                  ),
                );
              },
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
                  child: CircleButtonLeft(
                    onPressed: () {
                      controller.previousPage();
                    },
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 44.59,
                  width: 44.59,
                  child: CircleButtonRight(
                    onPressed: () {
                      controller.nextPage();
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
