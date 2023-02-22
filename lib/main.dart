import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:selim_trade/router/router.gr.dart';

import 'server/injection.dart';
import 'translation/codegen_loader.g.dart';

void main() async {
  await configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        assetLoader: const CodegenLoader(),
        supportedLocales: const [
          Locale('ru'),
        ],
        path: 'assets/l10n',
        fallbackLocale: const Locale('ru'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
