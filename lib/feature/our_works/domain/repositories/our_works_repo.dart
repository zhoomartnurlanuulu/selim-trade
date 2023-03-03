import 'package:selim_trade/feature/our_works/data/model/our_works_model.dart';

abstract class OurWorksRepo {
  Future<List<OurWorksModel>> getAllWorks();
}
