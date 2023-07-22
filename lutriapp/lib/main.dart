// no terminal
// flutter pub add easy_splash_screen
// flutter pub get (para instalar o package no projeto)
//  flutter pub add flutter_localizations --sdk=flutter
//  flutter pub add intl:any

import 'package:flutter/material.dart';
import 'package:lutriapp/SplashPage.dart';
import 'package:lutriapp/dadosF.dart';
import 'package:lutriapp/home.dart';
import 'package:lutriapp/feira.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main(){
  runApp (const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LutriApp',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const SplashPage(),
        '/home': (context) => const home(),
        'home/dados': (context) => const dadosF(),
        
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [const Locale('pt', 'BR')],
    );
  }
}