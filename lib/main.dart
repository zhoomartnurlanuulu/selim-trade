import 'package:selim_trade/feature/home/presentation/blocs/questions_cubit/questions_cubit.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:selim_trade/core/router/router.gr.dart';
import 'package:selim_trade/api/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'translation/codegen_loader.g.dart';
import 'package:flutter/material.dart';

void main() async {
  await init();
  await EasyLocalization.ensureInitialized();
  FlutterNativeSplash.remove();

  runApp(
    EasyLocalization(
      assetLoader: const CodegenLoader(),
      supportedLocales: const [
        Locale('ru'),
      ],
      path: 'assets/l10n',
      fallbackLocale: const Locale('ru'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<QuestionsCubit>(),
      child: MaterialApp.router(
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
      ),
    );
  }
}
