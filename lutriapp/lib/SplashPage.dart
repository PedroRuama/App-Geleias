// no terminal
// flutter pub add easy_splash_screen
// flutter pub get (para instalar o package no projeto)

import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:lutriapp/home.dart';
import 'package:lutriapp/feira.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('images/logo2.jpg',),
      title: const Text('LutriApp', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
      backgroundColor: Colors.black,
      // gradientBackground: const LinearGradient(
      //   begin: Alignment.topRight,
      //   end: Alignment.bottomLeft,
      //   colors: [
      //     Colors.black,
      //     //add outra cor pro gradient
      //   ],
      // ),
      // backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: const Text('Loading...', style: TextStyle(color: Colors.white),),
      navigator: const home(),
      durationInSeconds: 4,
    );
  }
}