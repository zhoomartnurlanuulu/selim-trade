// ignore_for_file: must_be_immutable, depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/feature/news/data/model/news_model.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/feature/news/pages/news_detail_info.dart';
import 'package:selim_trade/feature/news/presentation/widgets/detail_pop_up.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/feature/news/presentation/widgets/news_image_builder.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/api/service_locator.dart';

class NewsDetailPage extends StatelessWidget {
  NewsDetailPage({super.key, required this.model});
  NewsModel model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsCubit>(),
      child: Scaffold(
        appBar: CustomAppBar(
          elevation: 0,
          centerTitle: false,
          title: Image.asset(
            AppImages.logoBlack,
            height: 39,
          ),
          color: Colors.white,
          actions: const [DetailPopUp()],
        ),
        body: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            NewsDetailInfo(
              model: model,
            ),
            const SizedBox(
              height: 7,
            ),
            NewsImageBuilder(
              model: model,
            ),
            const SizedBox(
              height: 51,
            ),
            Center(
              child: Text(
                'похожие новости'.toUpperCase(),
                style: AppTextStyles.s16w700,
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            BlocBuilder<NewsCubit, NewsState>(
              builder: (context, state) {
                return state.when(
                  loading: () => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AppShimmerWidget(
                          height: 161,
                          width: 260,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        AppShimmerWidget(
                          height: 161,
                          width: 260,
                        ),
                      ],
                    ),
                  ),
                  error: (error) => Center(
                    child: Text(error.message),
                  ),
                  success: (model) => SizedBox(
                    height: 216,
                    width: 316,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          context.router.replace(
                            NewsDetailPageRoute(model: model[index]),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 26.33),
                          height: 161,
                          width: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  model[index].titleImage),
                              fit: BoxFit.cover,
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
              height: 50,
            ),
            const QuestionWidget(),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
