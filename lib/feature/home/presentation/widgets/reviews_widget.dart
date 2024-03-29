import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/components/circale_button_left.dart';
import 'package:selim_trade/components/circale_button_right.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/reviews_cubit/reviews_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/resource/app_colors.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return BlocProvider(
      create: (context) => sl<ReviewsCubit>(),
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
                loading: () => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AppShimmerWidget(width: 260, height: 151),
                        const SizedBox(
                          width: 20,
                        ),
                        AppShimmerWidget(
                          width: 260,
                          height: 151,
                        )
                      ],
                    )),
                error: (error) => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AppErrorShimmer(width: 260, height: 151),
                      const SizedBox(
                        width: 20,
                      ),
                      AppErrorShimmer(
                        width: 260,
                        height: 151,
                      )
                    ],
                  ),
                ),
                success: (model) => CarouselSlider.builder(
                  carouselController: controller,
                  options: CarouselOptions(
                    padEnds: false,
                    viewportFraction: 0.72,
                    enableInfiniteScroll: false,
                  ),
                  itemBuilder: (context, index, _) {
                    return Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 6, left: 30.9),
                      margin: const EdgeInsets.only(
                        top: 30,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(AppImages.reviewBack),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 31.7,
                                backgroundImage: CachedNetworkImageProvider(
                                    model[index].image),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${model[index].name} ${model[index].surname}",
                                    style: AppTextStyles.s12w600,
                                  ),
                                  Text(
                                    model[index].title,
                                    style: AppTextStyles.s10w600,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Text(
                              model[index].content,
                              style: AppTextStyles.s12w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: model.length,
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
    );
  }
}
