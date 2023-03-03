import 'package:selim_trade/feature/home/data/model/benifits_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/benifits_repo.dart';

class BenifitsUseCase {
  BenifitsUseCase({
    required this.repo,
  });
  final BenifitsRepo repo;
  Future<List<BenifitsModel>> getBenifits() async {
    try {
      return await repo.getBenifits();
    } catch (e) {
      rethrow;
    }
  }
}
