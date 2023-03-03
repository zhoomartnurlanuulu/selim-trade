import 'package:selim_trade/feature/home/data/model/questions_model.dart';

abstract class QuestionsRepo {
  Future<QuestionsModel> questions(String name, String phone, String content);
}
