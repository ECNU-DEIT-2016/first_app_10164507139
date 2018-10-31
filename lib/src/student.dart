class Student {
  final int id;
  String name;
  String sex;
  Student(this.id, this.name,this.sex);
  @override
  String toString() => '$id: $name: $sex';
}