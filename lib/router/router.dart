import 'package:auto_route/annotations.dart';
import 'package:selim_trade/feature/home/presentation/home_screen.dart';
import 'package:selim_trade/feature/news/presentation/news_screen.dart';
import 'package:selim_trade/feature/news/presentation/widgets/news_detail.dart';
import 'package:selim_trade/feature/our_works/presentation/our_work_screen.dart';
import 'package:selim_trade/feature/services/presentation/service_screen.dart';
import 'package:selim_trade/feature/services/presentation/widgets/gates_info_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: OurWorksScreen),
    AutoRoute(page: ServiceScreen),
    AutoRoute(page: NewsScreen),
    AutoRoute(page: GateInfoPage),
    AutoRoute(page: NewsDetailPage),
  ],
)
class $AppRouter {}
