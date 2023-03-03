import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/router/router.gr.dart';
import 'package:selim_trade/server/service_locator.dart';
import 'package:selim_trade/theme/app_colors.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsCubit>(),
      child: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(color: AppColors.color105BFB),
            ),
            error: (error) => Center(
              child: Text(error.message),
            ),
            success: (model) => SizedBox(
              height: 1500,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          context.router.push(NewsDetailPageRoute());
                        },
                        child: Container(
                          height: 223,
                          width: 328,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage(AppImages.newsImage),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 257,
                                  child: Text(
                                    'РАСШИРЕНИЕ ДИЗАЙНА ВОРОТ СТАДНАРТНОЙ СЕРИИ RSD01SC BIW',
                                    style: AppTextStyles.s14p91w800
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.start,
                                  ),
                                )
                              ]),
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 30,
                      ),
                  itemCount: 6),
            ),
          );
        },
      ),
    );
  }
}
