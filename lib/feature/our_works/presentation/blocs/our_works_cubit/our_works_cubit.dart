import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/our_works/data/model/our_works_model.dart';
import 'package:selim_trade/feature/our_works/domain/use_case/our_works_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'our_works_state.dart';
part 'our_works_cubit.freezed.dart';

class OurWorksCubit extends Cubit<OurWorksState> {
  OurWorksCubit({required this.useCase})
      : super(const OurWorksState.loading()) {
    getAllWorks();
  }
  OurWorksUseCase useCase;
  Future<void> getAllWorks() async {
    emit(const OurWorksState.loading());
    try {
      emit(
        OurWorksState.success(await useCase.getAllWorks()),
      );
    } catch (e) {
      emit(
        OurWorksState.error(CatchException.convertException(e)),
      );
    }
  }
}
