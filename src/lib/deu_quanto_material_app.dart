import 'package:deuquanto/splash.dart';
import 'package:flutter/material.dart';

class DeuQuantoMaterialApp extends StatelessWidget {
  const DeuQuantoMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splash(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
