import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/feature/services/presentation/blocs/advantage_cubit/advantage_cubit.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/resource/app_colors.dart';
import 'package:selim_trade/resource/app_images.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class AdvantagesWidget extends StatelessWidget {
  const AdvantagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AdvantageCubit>(),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.advantages), fit: BoxFit.contain),
        ),
        child: BlocBuilder<AdvantageCubit, AdvantageState>(
          builder: (context, state) {
            return state.when(
              loading: () => ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      AppShimmerWidget(height: 20, radius: 0),
                      const SizedBox(height: 10),
                      AppShimmerWidget(height: 14),
                      const SizedBox(height: 85)
                    ],
                  );
                },
              ),
              error: (error) => ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      AppErrorShimmer(height: 20, radius: 0),
                      const SizedBox(height: 10),
                      AppErrorShimmer(height: 14),
                      const SizedBox(height: 85)
                    ],
                  );
                },
              ),
              success: (model) => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                        children: [
                          Text(
                            model[index].title,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.s20w600
                                .copyWith(color: AppColors.color414141),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            model[index].content,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.s14w300
                                .copyWith(color: AppColors.color414141),
                          ),
                          const SizedBox(height: 85)
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
