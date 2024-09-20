// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'BorderScreen.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderScreen(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('História'),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink, width: 5.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'História',
                    style: TextStyle(
                      fontFamily: 'PressStart2P',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const StorySection(
                  text:
                      'Sua ideia original ocorreu durante um jantar. Pac-man teve sua origem por conta de uma pizza sem uma fatia que lembra uma boca aberta.',
                ),
                const StorySection(
                  text:
                      'Sua principal inspiração foi a personagem Paku, conhecida por seu apetite no Japão, e assim nomearam o jogo de Puck-man, mas logo renomearam para Pac-man.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget para exibir uma seção da história
class StorySection extends StatelessWidget {
  final String text;

  const StorySection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(10),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink, width: 3.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'PressStart2P',
            fontSize: 15,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
