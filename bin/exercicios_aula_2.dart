import 'package:exercicios_aula_2/utils.dart';

void main(List<String> arguments) {
  List<Map<String, dynamic>> alunos = [
    {"id": 98523488, "nome": "João da Silva", "telefone": null},
    {"id": 98523489, "nome": "Lucas Evangelista", "telefone": '11996541236'},
    {"id": 98523490, "nome": "Maria Teodoro", "telefone": '11944551236'},
    {"id": 98523491, "nome": "Isabel Santos", "telefone": null},
  ];

  ListStudent listaEstudantes = ListStudent(
    listStudent: alunos
        .map((aluno) => Student.formatted(studentMap: aluno))
        .toList(),
  );
  print('Nomes \n');
  listaEstudantes.printNames();
  print('\n');
  print('Lista Completa \n');
  listaEstudantes.printStudents();
}
