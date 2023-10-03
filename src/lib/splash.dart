import 'package:deuquanto/calculo_individual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(seconds: 2),
        () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const CalculoIndividual(nome: 'Deu Quanto?'),
                ),
              )
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'DEU QUANTO?',
              style: TextStyle(
                  color: Color.fromARGB(255, 7, 85, 24), fontSize: 20),
            ),
            SizedBox(
                height: 150,
                width: 150,
                child: SvgPicture.network(
                    "https://www.svgrepo.com/show/41024/cash.svg")),
            const CircularProgressIndicator(
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
