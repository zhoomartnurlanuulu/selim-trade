import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/router/router.gr.dart';
import 'package:selim_trade/server/service_locator.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class LastNewsWidget extends StatelessWidget {
  const LastNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsCubit>(),
      child: SizedBox(
        height: 309,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                LocaleKeys.about_us_last_news.tr(),
                style: AppTextStyles.s16w700.copyWith(
                  color: AppColors.color414141,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<NewsCubit, NewsState>(
              builder: (context, state) {
                return state.when(
                  loading: () => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AppShimmerWidget(
                          height: 164,
                          width: 241,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        AppShimmerWidget(
                          height: 164,
                          width: 241,
                        ),
                      ],
                    ),
                  ),
                  error: (error) => Center(
                    child: Text(error.message),
                  ),
                  success: (model) => Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          context.router.replace(
                              NewsDetailPageRoute(model: model[index]));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 26.33),
                          height: 164,
                          width: 241,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  model[index].titleImage),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              model[index].title,
                              textAlign: TextAlign.start,
                              style: AppTextStyles.s10w800
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                      itemCount: model.length,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 31,
              width: 116,
              child: CustomTextButton(
                child: Text(
                  'Все Новости',
                  style: AppTextStyles.s12w600
                      .copyWith(color: AppColors.color414141),
                ),
                onPressed: () {
                  context.router.replace(const NewsScreenRoute());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
