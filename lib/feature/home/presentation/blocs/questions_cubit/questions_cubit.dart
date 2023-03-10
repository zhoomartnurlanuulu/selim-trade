import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/questions_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/questions_use_case.dart';
import 'package:selim_trade/server/catch_exception.dart';

part 'questions_state.dart';
part 'questions_cubit.freezed.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit({required this.useCase}) : super(QuestionsState.loading()) {
    getQuestions('', '', '');
  }
  QuestionsUseCase useCase;
  Future<void> getQuestions(String name, String phone, String content) async {
    try {
      emit(QuestionsState.success(
          await useCase.questions(name, phone, content)));
    } catch (e) {
      emit(
        QuestionsState.error(CatchException.convertException(e)),
      );
    }
  }
}
