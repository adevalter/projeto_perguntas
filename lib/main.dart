import 'package:flutter/material.dart';
import './Questionario.dart';
import 'resultado.dart';

void main() => runApp(PerguntasApp());

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': "Qual é a sua cor favorita?",
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ],
    },
    {
      'texto': "Qual é o seu animal favorito?",
      'respostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 5},
        {'texto': 'Leão', 'nota': 5},
      ],
    },
    {
      'texto': "Qual é o seu instrutor favorito?",
      'respostas': [
        {'texto': 'MAria', 'nota': 5},
        {'texto': 'Joao', 'nota': 7},
        {'texto': 'Leo', 'nota': 8},
        {'texto': 'Pedro', 'nota': 2},
      ],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas e Respostas"),
          backgroundColor: Colors.blue,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : const Resultado(),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
