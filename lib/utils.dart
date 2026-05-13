class Student {
  int id;
  String name;
  String? phone;

  Student({required this.id, required this.name, required this.phone});

  Student.formatted({
    required this.id,
    required this.name,
    required dynamic phone,
  }) : phone = phone ?? "Not informed";
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
