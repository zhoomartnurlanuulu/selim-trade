part of 'reviews_cubit.dart';

@freezed
class ReviewsState with _$ReviewsState {
  const factory ReviewsState.loading() = _Loading;
  const factory ReviewsState.success(List<ReviewsModel> model) = _Success;
  const factory ReviewsState.error(CatchException error) = _Error;
}
