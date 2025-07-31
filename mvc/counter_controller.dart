import 'package:demo_project/utils/import_export.dart';

class CounterController {
  CounterModel _counterModel = CounterModel();

  int get CounterValue => _counterModel.counter;

  get increment => null;

  String get message => "";

  get count => null;

  get reset => null;

  void incrementCounter() => _counterModel.incrementCounter();

  void resetCount() {}

  getCurrentCount() {}

  void incrementByUser1() {}

  void incrementByUser2() {}
}
