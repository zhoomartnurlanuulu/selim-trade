import 'package:flutter/material.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/services/data/model/gates_model.dart';

class GateInfoTitle extends StatelessWidget {
  GateInfoTitle({super.key, required this.model});
  GatesModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            model.content,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w300,
          ),
        ),
        const SizedBox(
          height: 55,
        ),
      ],
    );
  }
}
