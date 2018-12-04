import 'my_server.dart';
import 'dart:math';
/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class MyServerChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router
      .route("/users/[:id]").link(()=>MyController());
    router
      .route("/allnames").link(()=>MyRandomController());

    return router;
  }
}
class MyController extends ResourceController {
  List namelist =[
    '唐莉雯',
    '吴松二',
    '龙晶毅',
    '张静雅',
    '戚晓颖',
    '蔡心蕊',
    '周嘉翔',
    '李典康',
    '陈瑶',
    '郑可欣',
    '朱子恒',
    '赵世宇',
    
];
   int randomname(){
    Random random = new Random();
    int number = random.nextInt(13);
    return number;
    ///var id=number+1;
    ///String snumber=id.toString();
    ///querySelector('#number').text='学号：'+snumber;
    ///querySelector('#name').text='名字：'+namelist[number];
    
    
   
  }

  @Operation.get()
  Future<Response> getThings() async {
    
    return Response.ok(namelist[randomname()]);
  }

  @Operation.get('id')
  Future<Response> getThing(@Bind.path('id') int id) async {
    if (id < 0 || id >= namelist.length) {
      return Response.notFound();
    }
    return Response.ok(namelist[id]);
  }
}

class MyRandomController extends ResourceController {

List namelist =[
    '唐莉雯',
    '吴松二',
    '龙晶毅',
    '张静雅',
    '戚晓颖',
    '蔡心蕊',
    '周嘉翔',
    '李典康',
    '陈瑶',
    '郑可欣',
    '朱子恒',
    '赵世宇',
    
];
   
  
  
 @Operation.get()
  Future<Response> getThings() async {
   
      return Response.ok(namelist);
   
    
  }
}