import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/services_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/services_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'services_state.dart';
part 'services_cubit.freezed.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit({required this.useCase})
      : super(const ServicesState.loading()) {
    getServices();
  }
  ServicesUseCase useCase;
  Future<void> getServices() async {
    try {
      emit(ServicesState.success(await useCase.getServices()));
    } catch (e) {
      emit(
        ServicesState.error(CatchException.convertException(e)),
      );
    }
  }
}
