import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/work_time_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/work_time_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'work_time_state.dart';
part 'work_time_cubit.freezed.dart';

class WorkTimeCubit extends Cubit<WorkTimeState> {
  WorkTimeCubit({required this.useCase})
      : super(const WorkTimeState.initial()) {
    workTime();
  }
  WorkTimeUseCase useCase;
  Future<void> workTime() async {
    try {
      emit(WorkTimeState.success(await useCase.workTime()));
    } catch (e) {
      emit(
        WorkTimeState.error(
          CatchException.convertException(e),
        ),
      );
    }
  }
}
