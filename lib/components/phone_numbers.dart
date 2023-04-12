import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/phones_cubit/phones_cubit.dart';

class PhoneNumbers extends StatelessWidget {
  const PhoneNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhonesCubit, PhonesState>(
      builder: (context, state) {
        return state.when(
          initial: () => Column(
            children: [
              AppShimmerWidget(
                height: 12,
                width: 160,
              ),
              const SizedBox(
                height: 3,
              ),
              AppShimmerWidget(
                height: 12,
                width: 160,
              ),
              const SizedBox(
                height: 3,
              ),
              AppShimmerWidget(
                height: 12,
                width: 160,
              ),
            ],
          ),
          error: (error) => Column(
            children: [
              AppErrorShimmer(
                height: 12,
                width: 160,
              ),
              const SizedBox(
                height: 3,
              ),
              AppErrorShimmer(
                height: 12,
                width: 160,
              ),
              const SizedBox(
                height: 3,
              ),
              AppErrorShimmer(
                height: 12,
                width: 160,
              ),
            ],
          ),
          success: (model) => SizedBox(
            width: 120,
            child: ListView.builder(
                shrinkWrap: true,
                clipBehavior: Clip.none,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: model.length,
                itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          model[index].phone,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.s10w500,
                        ),
                      ],
                    )),
          ),
        );
      },
    );
  }
}
