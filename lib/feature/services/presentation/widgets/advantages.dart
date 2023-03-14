import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/services/presentation/blocs/advantage_cubit/advantage_cubit.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:selim_trade/resource/app_colors.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AdvantageCubit>(),
      child: Container(
        height: 1251,
        width: 319,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.advantages), fit: BoxFit.fill),
        ),
        child: BlocBuilder<AdvantageCubit, AdvantageState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error) => Center(
                child: Text(error.message),
              ),
              success: (model) => ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                        children: [
                          Text(
                            model[index].title!,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.s20w600
                                .copyWith(color: AppColors.color414141),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            model[index].content!,
                            style: AppTextStyles.s14w300
                                .copyWith(color: AppColors.color414141),
                          ),
                          const SizedBox(
                            height: 84,
                          )
                        ],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: model.length),
            );
          },
        ),
      ),
    );
  }
}
