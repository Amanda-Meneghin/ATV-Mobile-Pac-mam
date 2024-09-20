// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/FuitsScreen.dart';
import 'InitialScreen.dart';
import 'MenuScreen.dart';
import 'CharacterScreen.dart';
import 'StoryScreen.dart';
import 'FruitsScreen.dart';
import 'StrategiesScreen.dart';

void main() {
  runApp(const PacmanApp());
}

class PacmanApp extends StatelessWidget {
  const PacmanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pac-man',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const InitialScreen(),
      routes: {
        '/menu': (context) => const MenuScreen(),
        '/characters': (context) => const CharactersScreen(),
        '/story': (context) => const StoryScreen(),
        '/fruits': (context) => const FruitsScreen(),
        '/strategies': (context) => const StrategiesScreen(),
      },
    );
  }
}
