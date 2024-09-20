// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'BorderScreen.dart';
import 'CustomButton.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderScreen(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomButton(
                    text: 'Personagens',
                    borderColor: Colors.yellow,
                    onPressed: () {
                      Navigator.pushNamed(context, '/characters');
                    },
                  ),
                  CustomButton(
                    text: 'História',
                    borderColor: Colors.pink,
                    onPressed: () {
                      Navigator.pushNamed(context, '/story');
                    },
                  ),
                  CustomButton(
                    text: 'Frutas',
                    borderColor: Colors.red,
                    onPressed: () {
                      Navigator.pushNamed(context, '/fruits');
                    },
                  ),
                  CustomButton(
                    text: 'Estratégias',
                    borderColor: Colors.purple,
                    onPressed: () {
                      Navigator.pushNamed(context, '/strategies');
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'PressStart2P',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Usuário',
                          hintStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                        ),
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontFamily: 'PressStart2P'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
