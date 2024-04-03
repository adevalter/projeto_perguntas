import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

void main() => runApp(new PerguntasApp());

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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
    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['respostas'];
     
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas e Respostas"),
          backgroundColor: Color.fromRGBO(65, 105, 225, 100),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)),
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
