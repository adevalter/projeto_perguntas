import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

void main() => runApp(new PerguntasApp());

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelcionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelcionada++;
    });

    print(_perguntaSelcionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas e Respostas"),
          backgroundColor: Color.fromRGBO(65, 105, 225, 100),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelcionada]),
            Resposta("resposta1",_responder),
            Resposta("resposta2",_responder),
            Resposta("resposta3",_responder),
          ],
        ),
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
