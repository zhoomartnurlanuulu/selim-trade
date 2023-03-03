import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

import '../../../../theme/app_colors.dart';

class NewsDetailInfo extends StatelessWidget {
  NewsDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            'Расширение дизайна ворот \nстандартной серии RSD01SC BIW',
            style: AppTextStyles.s16w700.copyWith(color: AppColors.color414141),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Компания «SelimTrade» сообщает вам о расширении вариантов дизайна \nгаражных секционных ворот стандартной \nсерии RSD01SC BIW. С 10 марта 2016 года \nдля заказа стали доступны ворота \nс дизайном панели «доска» в трёх цветовых решениях (RAL 9003, RAL 8014 и «золотой дуб»).',
            style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
          ),
        ),
      ],
    );
  }
}
