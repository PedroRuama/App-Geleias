// no terminal
// flutter pub add easy_splash_screen
// flutter pub get (para instalar o package no projeto)

import 'package:flutter/material.dart';
import 'package:lutriapp/SplashPage.dart';
import 'package:lutriapp/home.dart';
import 'package:lutriapp/feira.dart';


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
        'home/feira': (context) => const feira(),
        
      },
    );
  }
}