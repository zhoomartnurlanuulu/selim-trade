import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:selim_trade/feature/home/presentation/blocs/work_time_cubit/work_time_cubit.dart';

class WorkTime extends StatelessWidget {
  const WorkTime({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkTimeCubit, WorkTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          error: (error) => Center(
            child: Text(error.message),
          ),
          success: (model) => SizedBox(
            height: 45,
            width: 160,
            child: ListView.builder(
              clipBehavior: Clip.none,
              itemCount: model.length,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
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
