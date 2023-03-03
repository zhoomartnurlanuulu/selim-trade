part of 'questions_cubit.dart';

@freezed
class QuestionsState with _$QuestionsState {
  factory QuestionsState.loading() = _Loading;
  factory QuestionsState.success(QuestionsModel model) = _Success;
  factory QuestionsState.error(CatchException error) = _Error;
}
