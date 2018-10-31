import 'package:angular/angular.dart';
import 'package:first_app/src/havedone_list/havedone_list_component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/todo_list/todo_list_component.dart';

import 'src/student.dart';
import 'src/random/random_component.dart';
import 'dart:html';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [RandomComponent,coreDirectives],
)
class AppComponent {
    List<Student> students = [
    Student(1, '唐莉雯','F'),
    Student(2, '吴松二','F'),
    Student(3, '龙晶毅','F'),
    Student(4, '张静雅','F'),
    Student(5, '戚晓颖','F'),
    Student(6, '蔡心蕊','F'),
    Student(7, '周嘉翔','M'),
    Student(8, '李典康','M'),
    Student(9, '陈瑶','F'),
    Student(10, '郑可欣','F'),
    Student(11, '朱子恒','M'),
    Student(12, '赵世宇','M'),

  ];
Student selected;
void onSelect(Student student) => selected = student;
}

    