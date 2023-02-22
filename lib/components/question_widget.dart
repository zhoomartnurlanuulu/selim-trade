import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/components/custom_gradient_button.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/theme/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode unUsedFocusNode = FocusNode();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 518,
        child: Form(
          child: Column(
            children: [
              Center(
                child: Text(
                  LocaleKeys.about_us_you_have_question.tr(),
                  style: AppTextStyles.s16w700
                      .copyWith(color: AppColors.color414141),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: 'Имя',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Tелефон',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                onTapOutside: (PointerDownEvent event) {
                  FocusScope.of(context).requestFocus(unUsedFocusNode);
                },
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: 'Сообщение',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 280,
                height: 57,
                child: AppGradientButton(
                  onPressed: () {},
                  child: Text(
                    'Оставить заявку',
                    style: AppTextStyles.s16w700.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
