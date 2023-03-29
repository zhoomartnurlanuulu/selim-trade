import 'package:easy_localization/easy_localization.dart';
import 'package:selim_trade/components/custom_text_button.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int currentPage = 1;
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return state.when(
          loading: () => ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) => AppShimmerWidget(
              height: 223,
              width: 396,
              radius: 20,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
          ),
          error: (error) => Center(
            child: Text(error.message),
          ),
          success: (model) => Column(
            children: [
              ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.router.push(
                        NewsDetailPageRoute(model: model.results[index]),
                      );
                    },
                    child: Container(
                      height: 223,
                      width: 328,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                model.results[index].titleImage),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 257,
                            child: Text(
                              model.results[index].title,
                              style: AppTextStyles.s14p91w800
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 30,
                ),
                itemCount: model.results.length,
              ),
              Center(
                child: CustomTextButton(
                    onPressed: model.next == null
                        ? null
                        : () {
                            currentPage += 1;
                            context.read<NewsCubit>().getNews(currentPage);
                          },
                    child: Text(
                      LocaleKeys.news_load_more.tr(),
                      style: AppTextStyles.s14w300
                          .copyWith(color: AppColors.color414141),
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
