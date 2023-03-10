
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/address_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/address_use_case.dart';
import 'package:selim_trade/server/catch_exception.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit({required this.useCase}) : super(const AddressState.initial()) {
    getAddress();
  }
  AddressUseCase useCase;
  Future<void> getAddress() async {
    try {
      emit(AddressState.success((await useCase.getAddress())));
    } catch (e) {
      emit(AddressState.error(CatchException.convertException(e)));
    }
  }
}
