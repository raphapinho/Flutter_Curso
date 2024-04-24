import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext conText) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'qual é seu animal favorito?',
        'respotas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'qual é seu instrutor favorito?',
        'respotas': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];

    List<Widget> respostas = [];

    for (String textoResp
        in perguntas[_perguntaSelecionada]['respostas'] as List) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Text('Perguntas'),
      ),
      body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas,
        ],
      ),
      ),
    );
  }
}
