import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/components/app_error_shimmer.dart';
import 'package:selim_trade/components/app_shimmer_widget.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/work_time_cubit/work_time_cubit.dart';

class WorkTime extends StatelessWidget {
  const WorkTime({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkTimeCubit, WorkTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () => Column(
            children: [
              AppShimmerWidget(
                height: 12,
                width: 105,
              ),
              const SizedBox(
                height: 3,
              ),
              AppShimmerWidget(
                height: 12,
                width: 120,
              ),
            ],
          ),
          error: (error) => Column(
            children: [
              AppErrorShimmer(
                height: 12,
                width: 105,
              ),
              const SizedBox(
                height: 3,
              ),
              AppErrorShimmer(
                height: 12,
                width: 120,
              ),
            ],
          ),
          success: (model) => SizedBox(
            height: 45,
            width: 160,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              itemCount: model.length,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${model[index].fromWeekday}-${model[index].toWeekday} ${model[index].fromHour.substring(1, 5)}-${model[index].toHour.substring(0, 5)}',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.s10w500,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
