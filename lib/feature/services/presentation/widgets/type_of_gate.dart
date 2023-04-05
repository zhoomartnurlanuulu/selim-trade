import 'package:selim_trade/feature/services/data/model/gates_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:flutter/material.dart';

class TypeOfGate extends StatelessWidget {
  TypeOfGate({super.key, required this.model});
  GatesModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ТИПЫ ВОРОТ',
            style: AppTextStyles.s16w800.copyWith(color: AppColors.color414141),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              height: 172,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(model.types[index].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 127, left: 10),
                    child: Text(
                      model.types[index].title,
                      style:
                          AppTextStyles.s12w800.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: model.types.length,
          ),
        ],
      ),
    );
  }
}
