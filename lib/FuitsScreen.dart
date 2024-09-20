// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'BorderScreen.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderScreen(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Frutas'),
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
                    border: Border.all(color: Colors.red, width: 5.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Frutas',
                    style: TextStyle(
                      fontFamily: 'PressStart2P',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Durante o jogo de acordo com seu nível, irão aparecer frutas que concederam pontos a mais:',
                  style: TextStyle(
                    fontFamily: 'PressStart2P',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Image.asset('imagens/Cereja.jpg',
                              width: 80, height: 80),
                          const SizedBox(height: 10),
                          const Text(
                            'Cereja - 100 pontos',
                            style: TextStyle(
                              fontFamily: 'PressStart2P',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Image.asset('imagens/Maça.jpg',
                              width: 80, height: 80),
                          const SizedBox(height: 10),
                          const Text(
                            'Maçã - 700 pontos',
                            style: TextStyle(
                              fontFamily: 'PressStart2P',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Image.asset('imagens/Morango.jpg',
                              width: 80, height: 80),
                          const SizedBox(height: 10),
                          const Text(
                            'Morango - 300 pontos',
                            style: TextStyle(
                              fontFamily: 'PressStart2P',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Image.asset('imagens/Laranja.jpg',
                              width: 80, height: 80),
                          const SizedBox(height: 10),
                          const Text(
                            'Laranja - 500 pontos',
                            style: TextStyle(
                              fontFamily: 'PressStart2P',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
