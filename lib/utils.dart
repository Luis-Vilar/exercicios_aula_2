class Student {
  int id;
  String name;
  String? phone;

  Student({required this.id, required this.name, required this.phone});

  Student.formatted({required Map<String, dynamic> studentMap})
    : id = studentMap['id'],
      name = studentMap['nome'],
      phone = studentMap['telefone'] ?? 'Not informed';
}

class ListStudent {
  List<Student> listStudent;

  ListStudent({required this.listStudent});

  void printStudents() {
    for (var student in listStudent) {
      print(
        'ID : ${student.id}|| Name : ${student.name} || Phone : ${student.phone ?? student.phone}',
      );
    }
  }

  void printNames() {
    for (var student in listStudent) {
      print(student.name);
    }
  }
}
