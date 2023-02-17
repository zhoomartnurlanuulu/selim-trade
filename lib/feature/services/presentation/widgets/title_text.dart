import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

import '../../../../theme/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Наши услуги',
            style: AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Наши сотрудники прошли сертифицированные тренинги в Учебных центрах ГК DoorHan \nв г. Москва, г. Алматы, г. Астаны а так же успешно \nсдали экзамены и являются обладателями сертификатов по направлениям «Воротные \nсистемы, ролл ставни, ролл ворота, \nавтоматические системы», «Монтаж \nавтоматики».',
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
        ),
      ],
    );
  }
}
