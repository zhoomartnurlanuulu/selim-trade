import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/components/custom_app_bar.dart';
import 'package:selim_trade/components/footer_widget.dart';
import 'package:selim_trade/components/question_widget.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/feature/news/presentation/widgets/detail_pop_up.dart';
import 'package:selim_trade/feature/news/presentation/widgets/news_detail_info.dart';
import 'package:selim_trade/router/router.gr.dart';

import '../../../../core/constants/app_text_style.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const NewsDetailInfo(),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: 350,
            width: 336,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.restImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 168,
            width: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.table),
                fit: BoxFit.fill,
              ),
            ),
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
          SizedBox(
            height: 216,
            width: 316,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context.router.replace(const NewsDetailPageRoute());
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 26.33),
                  height: 164,
                  width: 241,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AppImages.newsImage),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'РАСШИРЕНИЕ ДИЗАЙНА ВОРОТ СТАДНАРТНОЙ СЕРИИ \nRSD01SC BIW',
                      textAlign: TextAlign.start,
                      style:
                          AppTextStyles.s10w800.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 4,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const QuestionWidget(),
          const FooterWidget(),
        ],
      ),
    );
  }
}
