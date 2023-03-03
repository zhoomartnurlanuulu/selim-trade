import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/reviews_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/reviews_use_case.dart';
import 'package:selim_trade/server/catch_exception.dart';

part 'reviews_state.dart';
part 'reviews_cubit.freezed.dart';

class ReviewsCubit extends Cubit<ReviewsState> {
  ReviewsCubit({required this.useCase}) : super(const ReviewsState.loading()) {
    getReviews();
  }
  ReviewsUseCase useCase;
  Future<void> getReviews() async {
    try {
      emit(
        ReviewsState.success(
          await useCase.getReviews(),
        ),
      );
    } catch (e) {
      emit(
        ReviewsState.error(
          CatchException.convertException(e),
        ),
      );
    }
  }
}
