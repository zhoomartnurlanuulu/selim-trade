part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.success(NewsModel model) = _Success;
  const factory NewsState.error(CatchException error) = _Error;
}
