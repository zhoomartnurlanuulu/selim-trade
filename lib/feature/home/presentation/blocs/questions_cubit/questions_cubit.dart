import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/home/data/model/questions_model.dart';
import 'package:selim_trade/feature/home/domain/use_cases/questions_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'questions_state.dart';
part 'questions_cubit.freezed.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit({required this.useCase}) : super(QuestionsState.loading()) {
    sendQuestions(
        nameController.text, phoneController.text, contentController.text);
  }
  QuestionsUseCase useCase;
  final nameController = TextEditingController();
  bool nameValue = false;
  final phoneController = TextEditingController();
  bool phoneValue = false;
  final contentController = TextEditingController();
  bool contentValue = false;
  Future<void> sendQuestions(String name, String phone, String content) async {
    try {
      emit(QuestionsState.success(
          await useCase.questions(name, phone, content)));
    } catch (e) {
      emit(
        QuestionsState.error(CatchException.convertException(e)),
      );
    }
  }

  Future<void> nameValidation() async {
    nameController.text.isEmpty
        ? nameValue = true
        : nameValue = false;
  }

  Future<void> phoneValidation() async {
    phoneController.text.isEmpty 
        ? phoneValue = true
        : phoneValue = false;
  }

  Future<void> contentValidation() async {
    contentController.text.isEmpty 
        ? contentValue = true
        : contentValue = false;
  }
}
