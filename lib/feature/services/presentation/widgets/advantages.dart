import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_images.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1251,
      width: 319,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.advantages), fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            'ПРОМЫШЛЕННЫЙ МАСШТАБ',
            textAlign: TextAlign.center,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Данная серия ворот спроектирована специально для перекрытия больших проёмов на промышленных объектах.',
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 112,
          ),
          Text(
            'ВЫСОКИЙ УРОВЕНЬ ТЕРМОИЗОЛЯЦИИ',
            textAlign: TextAlign.center,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Промышленные ворота ISD01 применяются \nдля термоизоляции помещений с высокой интенсивностью использования.',
            style: AppTextStyles.s13w300.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 113,
          ),
          Text(
            'ОПТИМАЛЬНОЕ \nРЕШЕНИЕ',
            textAlign: TextAlign.center,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Благодаря высоким эксплуатационным качествам ворота DoorHan являются оптимальным решением для любых объектов.',
            style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 96,
          ),
          Text(
            'ЭЛЕГАНТНЫЙ ВНЕШНИЙ ВИД',
            textAlign: TextAlign.center,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Несмотря на то, что серия предназначена для промышленного применения, она обладает широким выбором дазайна.',
            style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'БЕЗОПАСНОСТЬ',
            textAlign: TextAlign.center,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Многоуровневая система безопасности включает: устройства защиты от обрыва пружины и от разрыва троса, которые защищают полотно от непреднамеренного падения.',
            style: AppTextStyles.s14w300.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 105,
          ),
          Text(
            'НАДЁЖНОСТЬ',
            textAlign: TextAlign.center,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.color414141),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Использование усиленных комплектующих обеспечивает повышенную надёжность конструкции в процессе эксплуатации.',
            style: AppTextStyles.s13w300.copyWith(color: AppColors.color414141),
          ),
        ],
      ),
    );
  }
}
