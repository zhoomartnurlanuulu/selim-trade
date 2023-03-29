import 'package:selim_trade/components/custom_show_dialog.dart';
import 'package:selim_trade/feature/home/presentation/blocs/questions_cubit/questions_cubit.dart';
import 'package:selim_trade/components/custom_gradient_button.dart';
import 'package:selim_trade/translation/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode unUsedFocusNode = FocusNode();
    final formKey = GlobalKey<FormState>();
    RegExp textPattern = RegExp(r'^[A-Za-z-А-Яа-я]+(\s?[A-Za-z-А-Яа-я]+)*$');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formKey,
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
              controller: context.read<QuestionsCubit>().nameController,
              autocorrect: false,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !textPattern.hasMatch(value)) {
                  context.read<QuestionsCubit>().nameValidation();
                  return 'Введите ваше имя';
                }

                return null;
              },
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  context.read<QuestionsCubit>().phoneValidation();
                  return 'Введите номер телефона';
                }
                return null;
              },
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^[0-9+]+$')),
                LengthLimitingTextInputFormatter(10),
              ],
              controller: context.read<QuestionsCubit>().phoneController,
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
              controller: context.read<QuestionsCubit>().contentController,
              onTapOutside: (PointerDownEvent event) {
                FocusScope.of(context).requestFocus(unUsedFocusNode);
              },
              maxLines: 8,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !textPattern.hasMatch(value)) {
                  context.read<QuestionsCubit>().contentValidation();
                  return 'Напишите что нибудь';
                }

                return null;
              },
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
                  if (formKey.currentState!.validate()) {
                    context.read<QuestionsCubit>().sendQuestions(
                          context.read<QuestionsCubit>().nameController.text,
                          context.read<QuestionsCubit>().phoneController.text,
                          context.read<QuestionsCubit>().contentController.text,
                        );
                    showAppDialog(context);
                    context.read<QuestionsCubit>().nameController.clear();
                    context.read<QuestionsCubit>().phoneController.clear();
                    context.read<QuestionsCubit>().contentController.clear();
                  }
                },
                child: Text(
                  'Оставить заявку',
                  style: AppTextStyles.s16w700.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
