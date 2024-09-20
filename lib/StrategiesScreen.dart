// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'BorderScreen.dart';

class StrategiesScreen extends StatelessWidget {
  const StrategiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Estratégias'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Título "Estratégias" com o mesmo estilo da tela de História
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 5.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Estratégias',
                  style: TextStyle(
                    fontFamily: 'PressStart2P',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Textos das estratégias no mesmo formato da história
              const StrategySection(
                text: '1.Conheça o Padrão dos Fantasmas: Cada fantasma tem um padrão de movimento específico. Blinky sempre persegue Pac-Man, enquanto Pinky tenta se posicionar na frente dele. Inky e Clyde têm movimentos mais erráticos.',
              ),
              const StrategySection(
                text: '2.Use as Pontes de Energias: Quando Pac-Man come um ponto de energia (ou bolha), os fantasmas ficam azuis e podem ser comidos. Aproveite esses momentos para eliminar os fantasmas e ganhar pontos extras.',
              ),
              const StrategySection(
                text:
                    '3.Planeje Seu Caminho: Tente manter-se em áreas onde há mais espaço para manobrar e evite ficar preso em cantos ou corredores estreitos. Movimente-se de forma a usar o máximo possível os caminhos e corredores do labirinto.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget para exibir cada estratégia com borda roxa
class StrategySection extends StatelessWidget {
  final String text;

  const StrategySection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(10),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple, width: 3.0),
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