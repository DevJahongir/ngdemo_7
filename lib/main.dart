import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ngdemo7/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en', 'US'),
      Locale('ru', 'RU'),
      Locale('uz', 'UZ'),
      Locale('ko', 'KR')
    ],
    path: 'assets/translations',
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

