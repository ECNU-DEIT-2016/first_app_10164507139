import 'dart:async';

import 'package:angular/core.dart';

/// Mock service emulating access to a to-do list stored on a server.
@Injectable()
class HavedoneListService {
  List<String> mockHavedoneList = <String>[];

  Future<List<String>> getHavedoneList() async => mockHavedoneList;
}
