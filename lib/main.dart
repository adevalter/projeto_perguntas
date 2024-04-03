import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './Questionario.dart';
import 'resultado.dart';

void main() => runApp(new PerguntasApp());

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': "Qual é a sua cor favorita?",
      'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': "Qual é o seu animal favorito?",
      'resposta': ['coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': "Qual é o seu instrutor favorito?",
      'resposta': ['MAria', 'Joao', 'Leo', 'Pedro']
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
          backgroundColor: Color.fromRGBO(65, 105, 225, 100),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder)
            : const Resultado(),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
