import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/services/data/model/advantage_model.dart';
import 'package:selim_trade/feature/services/domain/use_case/advantage_use_case.dart';
import 'package:selim_trade/server/catch_exception.dart';

part 'advantage_state.dart';
part 'advantage_cubit.freezed.dart';

class AdvantageCubit extends Cubit<AdvantageState> {
  AdvantageCubit({required this.useCase}) : super(AdvantageState.loading()) {
    getData();
  }
  AdvantageUseCase useCase;

  Future<void> getData() async {
    try {
      emit(
        AdvantageState.success(
          (await useCase.getAdvantage()),
        ),
      );
    } catch (e) {
      emit(
        AdvantageState.error(
          CatchException.convertException(e),
        ),
      );
    }
  }
}
