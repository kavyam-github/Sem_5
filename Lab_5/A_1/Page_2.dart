import 'package:demo_project/utils/import_export.dart';
import 'package:get/get.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _SecondState();
}

class _SecondState extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page_2',
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Navigate back to Page_1',
                  style: TextStyle(color: Colors.black))),
        ),
      ),
    );
  }
}
