import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jeadi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Parabéns!", style: TextStyle(fontSize: 28)),
    );
  }
}
