import 'package:threads_clone/data/model.dart';
import 'package:threads_clone/senddata/data.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDatasource extends Ithread {
  @override
  List<thread> getThread() {
    return listThear()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}