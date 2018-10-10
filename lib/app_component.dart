import 'package:angular/angular.dart';
import 'package:first_app/src/havedone_list/havedone_list_component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/todo_list/todo_list_component.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [TodoListComponent,
  HavedoneListComponent,
  coreDirectives,
  formDirectives],
)
class AppComponent {
    final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelect(Hero hero) => selected = hero;// Nothing here yet. All logic is in TodoListComponent.
}

    