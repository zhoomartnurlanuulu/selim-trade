import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/services/data/model/gates_model.dart';
import 'package:selim_trade/feature/services/domain/use_case/gate_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'gates_state.dart';
part 'gates_cubit.freezed.dart';

class GatesCubit extends Cubit<GatesState> {
  GatesCubit({required this.useCase}) : super(const GatesState.loading()) {
    getGates();
  }
  GateUseCase useCase;
  Future<void> getGates() async {
    try {
      emit(
        GatesState.success(
          await useCase.getGates(),
        ),
      );
    } catch (e) {
      emit(
        GatesState.error(
          CatchException.convertException(e),
        ),
      );
    }
  }
}
