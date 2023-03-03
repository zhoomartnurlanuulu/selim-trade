import 'package:selim_trade/feature/home/data/model/benifits_model.dart';

abstract class BenifitsRepo {
 Future<List<BenifitsModel>> getBenifits();
}
