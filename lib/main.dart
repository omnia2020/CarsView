import 'package:car_view/screens/car_home/car_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarView',
      debugShowCheckedModeBanner: false,
      locale: Locale('ar'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', ''), // Arabic
        const Locale('en', ''), // English
      ],
      theme: ThemeData(
          primaryColor: Color(0xff28328C),
          colorScheme: ColorScheme.light(
            primary: Color(0xff28328C),
          )).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: CarHomeScreen(),
    );
  }
}
