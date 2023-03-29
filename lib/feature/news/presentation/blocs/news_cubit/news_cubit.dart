import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selim_trade/feature/news/data/model/news_model.dart';
import 'package:selim_trade/feature/news/domain/use_cases/news_use_case.dart';
import 'package:selim_trade/api/catch_exception.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit({required this.useCase}) : super(const NewsState.loading()) {
    getNews(1);
  }
  NewsUseCase useCase;
  Future<void> getNews(int currentPage) async {
    try {
      emit(
        NewsState.success(await useCase.getNews(currentPage)),
      );
    } catch (e) {
      emit(
        NewsState.error(CatchException.convertException(e)),
      );
    }
  }

 
}
