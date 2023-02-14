import 'package:auto_route/annotations.dart';
import 'package:selim_trade/feature/home/presentation/home_screen.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: HomeScreen, initial: true),
  ],
)
class $AppRouter {}
