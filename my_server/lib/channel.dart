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
      .route("/random").link(()=>RandController())
      ;
    return router;
  }
}
class MyController extends ResourceController {
  
  List<String> names = [];

 

  @Operation.get()
  Future<Response> getThings() async {
    
    await connect(names);
    return Response.ok(names);
  }

  @Operation.get('id')
  Future<Response> getStudent(@Bind.path('id') int id) async {
   await connect(names);
   if (id < 0 || id >= names.length) {
      return Response.notFound();
    }
    return Response.ok(names[id]);
  }

}

class RandController extends ResourceController {
 
  List<String> names = [];

  @Operation.get()
  Future<Response> getThings() async {
    
    await connect(names);
    int ran=getRandom();
    return Response.ok(names[ran]);
  }



  int getRandom(){
    
     Random random = new Random();
     
     int rand = random.nextInt(13);
     
     return rand;
  }
}

Future connect(List<String> names) async{
  var s = ConnectionSettings(
    user: "deit2016",//改为公共账户
    password: "deit2016@ecnu",
    host: "www.muedu.org",
    port: 3306,
    db: "deit2016db_10164507139",
  );
   print("Opening connection ...");
   var conn = await MySqlConnection.connect(s);
   print("Opened connection!");
   Results result =
      await conn.execute('SELECT id,stu_id,name,sex FROM student');
   //print(result);
  result.forEach( (f) => names.add(f.toString()) );
  
}