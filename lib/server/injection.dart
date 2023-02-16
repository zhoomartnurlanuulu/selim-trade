import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade/server/injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
configureInjection(String env) async {
  getIt.init(environment: env);
}
