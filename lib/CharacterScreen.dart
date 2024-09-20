// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'BorderScreen.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderScreen(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Personagens'),
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
                    border: Border.all(color: Colors.yellow, width: 5.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Personagens',
                    style: TextStyle(
                      fontFamily: 'PressStart2P',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CharacterSection(
                  title: 'Pac-man',
                  imagePath: 'imagens/Pacman.jpg',
                  description:
                      'Pac-man é o protagonista do jogo. Ele deve comer todas as pastilhas no labirinto enquanto evita os fantasmas. Ao comer uma pastilha de energia, ele pode comer os fantasmas por um tempo limitado.',
                ),
                const CharacterSection(
                  title: 'Blinky',
                  imagePath: 'imagens/Blinky.jpg',
                  description:
                      'Blinky é o fantasma vermelho. Ele é o mais agressivo e persegue diretamente o Pac-man.',
                ),
                const CharacterSection(
                  title: 'Pinky',
                  imagePath: 'imagens/Pinky.jpg',
                  description:
                      'Pinky é o fantasma rosa. Ele tenta posicionar-se na frente do Pac-man para emboscá-lo.',
                ),
                const CharacterSection(
                  title: 'Inky',
                  imagePath: 'imagens/Inky.jpg',
                  description:
                      'Inky é o fantasma azul. Ele é imprevisível e seu comportamento depende da posição dos outros fantasmas.',
                ),
                const CharacterSection(
                  title: 'Clyde',
                  imagePath: 'imagens/Clyde.jpg',
                  description:
                      'Clyde é o fantasma laranja. Ele alterna entre perseguir o Pac-man e se afastar dele.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget para exibir informações de um personagem
class CharacterSection extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const CharacterSection(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'PressStart2P',
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              Image.asset(imagePath, width: 80, height: 80),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  description,
                  style: const TextStyle(
                    fontFamily: 'PressStart2P',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
