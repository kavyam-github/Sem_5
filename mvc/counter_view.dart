import 'package:demo_project/utils/import_export.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  CounterController _counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APPBAR_CONTROLLER_VIEW),
      ),
      body: Center(
        child: Text(_counterController.CounterValue.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _counterController.incrementCounter();
        setState(() {});
      }),
    );
  }
}
