import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String? texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(texto!),
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 59, 59, 205),
            foregroundColor: Color.fromARGB(255, 246, 0, 0),
            shadowColor: Color.fromARGB(255, 0, 0, 0)),
      ),
    );
  }
}
