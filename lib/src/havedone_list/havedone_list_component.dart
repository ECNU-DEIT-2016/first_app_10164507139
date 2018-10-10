import 'dart:async';



import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';



import 'havedone_list_service.dart';


@Component(
  selector: 'havedone-list',
  styleUrls: ['havedone_list_component.css'],
  templateUrl: 'havedone_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    MaterialButtonComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(HavedoneListService)],
)
class HavedoneListComponent implements OnInit {
  final HavedoneListService havedoneListService;

  List<String> items = [];
  String newHavedone = '';

  HavedoneListComponent(this.havedoneListService);


  @override
  Future<Null> ngOnInit() async {
    items = await havedoneListService.getHavedoneList();
  }

  void add() {
    items.add(newHavedone);
    newHavedone = '';
  }

  String remove(int index) => items.removeAt(index);
  void clear(){
    items.clear();
  }

}

 