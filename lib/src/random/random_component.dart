import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'random_service.dart';
import 'dart:html';
import 'dart:math';
@Component(
  selector: 'random',
  styleUrls: ['random_component.css'],
  templateUrl: 'random_component.html',
  directives: [
   
    MaterialButtonComponent,
    NgFor,
    NgIf,
    coreDirectives,
  ],
  providers: [const ClassProvider(RandomService)],
)



class RandomComponent implements OnInit {
  final RandomService randomService;

  List<String> items = [];
  String newTodo = '';
var list=[0,0,0,0,0,0,0,0,0,0,0,0,0];

var time=0;
Map namelist ={
    0:'唐莉雯',
    1:'吴松二',
    2:'龙晶毅',
    3:'张静雅',
    4:'戚晓颖',
    5:'蔡心蕊',
    6:'周嘉翔',
    7:'李典康',
    8:'陈瑶',
    9:'郑可欣',
    10:'朱子恒',
    11:'赵世宇',
    
  };



  RandomComponent(this.randomService);

  @override
  Future<Null> ngOnInit() async {
    items = await randomService.getRandom();
   
  }
 
  void randomname(){
    var random = Random();
    var number = random.nextInt(13);
   
    var id=number+1;
    String snumber=id.toString();
    querySelector('#number').text='学号：'+snumber;
    querySelector('#name').text='名字：'+namelist[number];
    list[number]++;
    String times=list[number].toString();
    querySelector('#counter').text=namelist[number]+'同学已经被点名'+times+'次';
  }
  
  
  
}
