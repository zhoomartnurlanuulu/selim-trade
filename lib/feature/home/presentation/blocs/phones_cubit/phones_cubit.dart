
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/phone_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/phone_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'phones_state.dart';
part 'phones_cubit.freezed.dart';

class PhonesCubit extends Cubit<PhonesState> {
  PhonesCubit({required this.useCase}) : super(const PhonesState.initial()) {
    getPhones();
  }
  PhoneUseCase useCase;
  Future<void> getPhones() async {
    try {
      emit(PhonesState.success(await useCase.getPhones()));
    } catch (e) {
      emit(PhonesState.error(CatchException.convertException(e)));
    }
  }
}
