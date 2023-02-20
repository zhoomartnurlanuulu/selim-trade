import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';

class GateInfoTitle extends StatelessWidget {
  const GateInfoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 22,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Промышленные секционные ворота \nDoorHan устанавливаются в проёмы производственных зданий, складских \nпомещений, цехов, терминалов \nи прочих промышленных объектов, \nгде они должны отвечать гораздо \nболее жёстким требованиям, \nв отличие от гаражных ворот. Так как промышленные ворота \nэксплуатируются с высокой \nинтенсивностью, для обеспечения \nдолгосрочной работы без сбоев, \nони обладают повышенной \nизносостойкостью за счёт применения специальных технологий. \nИспользуемая в воротах система \nуплотнителей обеспечивает высокую термоизоляцию — сохранение \nтребуемого температурного режима \nявляется важной задачей практически \nдля любого промышленного объекта.',
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w300,
          ),
        ),
        SizedBox(
          height: 55,
        ),
      ],
    );
  }
}
