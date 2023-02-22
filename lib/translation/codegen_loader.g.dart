// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "sliver_app_bar_text": {
    "modern_safty": "СОВРЕМЕННАЯ\nИ НАДËЖНАЯ ЗАЩИТА",
    "find": "Найдите идеальный вариант сами\nили предоставьте это нам",
    "order_gate": "Заказать ворота"
  },
  "about_us": {
    "who_us": "Кто такие Selim trade?",
    "about_slim": "Мы являемся официальным \nпредставителем DOORHAN.",
    "about_slim1": "Производственно — монтажная \nкомпания Selim trade основана \nв 2003 году.",
    "about_slim2": "Основа нашей деятельности — это продажа \nи монтаж: ворот, рольставней, шлагбаумов, \nрол штор, жалюзи и многое другое.",
    "we_offer": "Мы предлагаем",
    "our_benifits": "Наши преимущества",
    "last_news": "Последние новости",
    "our_works": "Наши работы",
    "services": "Сервис",
    "reviews": "Отзывы наших клиентов",
    "you_have_question": "Остались вопросы?"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru};
}
