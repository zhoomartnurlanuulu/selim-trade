import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/core/router/router.gr.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key, required this.newsCount});
  int newsCount;

  @override
  Widget build(BuildContext context) {
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
              width: 328,
              radius: 20,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
          ),
          error: (error) => Center(
            child: Text(error.message),
          ),
          success: (model) => ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (index >= newsCount) {
                  newsCount += 3;
                }
                return GestureDetector(
                  onTap: () {
                    context.router.push(
                      NewsDetailPageRoute(model: model[index]),
                    );
                  },
                  child: Container(
                    height: 223,
                    width: 328,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              model[index].titleImage),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 257,
                            child: Text(
                              model[index].title,
                              style: AppTextStyles.s14p91w800
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          )
                        ]),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 30,
                  ),
              itemCount: newsCount),
        );
      },
    );
  }
}
