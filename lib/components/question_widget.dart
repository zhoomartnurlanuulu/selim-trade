import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/custom_gradient_button.dart';
import 'package:selim_trade/components/custom_show_dialog.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';

import '../feature/home/presentation/blocs/questions_cubit/questions_cubit.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode unUsedFocusNode = FocusNode();
    final nameController = TextEditingController();

    final phoneController = TextEditingController();

    final contentController = TextEditingController();

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
                controller: nameController,
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
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                controller: phoneController,
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
                controller: contentController,
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
                  onPressed: () {
                    context.read<QuestionsCubit>().getQuestions(
                          nameController.text,
                          phoneController.text,
                          contentController.text,
                        );
                    phoneController.clear();
                    nameController.clear();
                    contentController.clear();
                    showAppDialog(context);
                  },
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
