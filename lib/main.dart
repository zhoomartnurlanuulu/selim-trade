import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade/router/router.gr.dart';

import 'server/injection.dart';

void main() async {
  await configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Selim Trade',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
