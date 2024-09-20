// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'BorderScreen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderScreen(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Pac-man',
                style: TextStyle(
                  fontFamily: 'PressStart2P',
                  fontSize: 40,
                  color: Colors.yellow,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('imagens/Banner.png'),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/menu');
                },
                child: const Text(
                  'Play',
                  style: TextStyle(
                    fontFamily: 'PressStart2P',
                    fontSize: 30,
                    color: Colors.yellow,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
