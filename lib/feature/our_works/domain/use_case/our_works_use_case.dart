import 'package:selim_trade/feature/our_works/data/model/our_works_model.dart';
import 'package:selim_trade/feature/our_works/domain/repositories/our_works_repo.dart';

class OurWorksUseCase {
  OurWorksUseCase({
    required this.repo,
  });
  final OurWorksRepo repo;
  Future<List<OurWorksModel>> getAllWorks() async {
    try {
      return await repo.getAllWorks();
    } catch (e) {
      rethrow;
    }
  }
}
