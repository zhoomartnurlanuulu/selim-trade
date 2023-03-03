import 'package:selim_trade/feature/home/data/model/questions_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/questions_repo.dart';

class QuestionsUseCase {
  QuestionsUseCase({
    required this.repo,
  });
  final QuestionsRepo repo;
  Future<QuestionsModel> questions(
      String name, String phone, String content) async {
    try {
      return await repo.questions(name, phone, content);
    } catch (e) {
      rethrow;
    }
  }
}
