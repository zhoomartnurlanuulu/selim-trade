import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/social_media_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/social_media_use_case.dart';
import 'package:selim_trade/server/catch_exception.dart';

part 'social_media_state.dart';
part 'social_media_cubit.freezed.dart';

class SocialMediaCubit extends Cubit<SocialMediaState> {
  SocialMediaCubit({required this.useCase})
      : super(const SocialMediaState.initial()) {
    getSocial();
  }
  SocialMediaUseCase useCase;
  Future<void> getSocial() async {
    try {
      emit(
        SocialMediaState.success(
          await useCase.getSocial(),
        ),
      );
    } catch (e) {
      emit(
        SocialMediaState.error(
          CatchException.convertException(e),
        ),
      );
    }
  }
}
