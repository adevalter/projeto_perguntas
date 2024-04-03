import 'package:flutter/material.dart';

void main() => runApp(new PerguntasApp());

class PerguntaAppState extends State<PerguntasApp> {
  var perguntaSelcionada = 0;

  void responder() {
    setState(() {
      perguntaSelcionada++;
    });

    print(perguntaSelcionada);
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
            Text(perguntas[perguntaSelcionada]),
            ElevatedButton(child: Text('Resposta 1'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 2'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 3'), onPressed: responder)
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
