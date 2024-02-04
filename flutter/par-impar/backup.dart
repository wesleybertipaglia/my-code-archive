import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(GameApp());
}

class GameApp extends StatefulWidget {
  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  final estilo = const TextStyle(
    color: Colors.white,
    fontSize: 64,
  );
  final statusStyle = const TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  String status = '';

  void play(String option) {
    var selected = Random().nextInt(100);
    if (selected % 2 == 0 && option == 'par') {
      setState(() => status = '$selected. Você Ganhou');
    } else if (selected % 2 != 0 && option == 'impar') {
      setState(() => status = '$selected. Você Ganhou');
    } else {
      setState(() => status = '$selected. Você Perdeu');
    }
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 14, 32, 33),
              width: double.infinity,
              height: 48,
              child: Center(
                child: Text(status, style: statusStyle),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => play('par'),
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Center(
                    child: Text('Par', style: estilo),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => play('impar'),
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Center(
                    child: Text('Ímpar', style: estilo),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Type get newMethod => Center;
}
