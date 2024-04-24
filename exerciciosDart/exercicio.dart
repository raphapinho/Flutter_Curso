class Pessoa {
  String? nome;
  String? _cpf;
}

void main(List<String> args) {
  var p1 = Pessoa();
  p1.nome = 'Joao';
  p1._cpf = '123.456.789-0';

  print('o ${p1.nome} tem cpf ${p1._cpf}');
}
