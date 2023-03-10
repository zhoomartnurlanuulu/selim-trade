import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/core/constants/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/phones_cubit/phones_cubit.dart';

class PhoneNumbers extends StatelessWidget {
  const PhoneNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhonesCubit, PhonesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          error: (error) => Center(
            child: Text(error.message),
          ),
          success: (model) => SizedBox(
            height: 35,
            width: 120,
            child: ListView.builder(
                clipBehavior: Clip.none,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: model.length,
                itemBuilder: (context, index) => Column(
                      children: [
                        Text(
                          model[index].phone,
                          style: AppTextStyles.s12w500,
                        ),
                      ],
                    )),
          ),
        );
      },
    );
  }
}
