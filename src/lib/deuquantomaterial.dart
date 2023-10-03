import 'package:deuquanto/splash.dart';
import 'package:flutter/material.dart';

class DeuQuantoMaterial extends StatelessWidget {
  const DeuQuantoMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splash(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
