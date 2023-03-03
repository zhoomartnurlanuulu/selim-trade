import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/benifits_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/benifits_use_case.dart';
import 'package:selim_trade/server/catch_exception.dart';

part 'benifits_state.dart';
part 'benifits_cubit.freezed.dart';

class BenifitsCubit extends Cubit<BenifitsState> {
  BenifitsCubit({required this.useCase})
      : super(const BenifitsState.loading()) {
    getBenifits();
  }
  BenifitsUseCase useCase;
  Future<void> getBenifits() async {
    try {
      emit(
        BenifitsState.success(await useCase.getBenifits()),
      );
    } catch (e) {
      emit(
        BenifitsState.error(CatchException.convertException(e)),
      );
    }
  }
}
