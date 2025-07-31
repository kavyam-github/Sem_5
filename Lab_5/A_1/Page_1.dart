import 'package:demo_project/utils/import_export.dart';
import 'package:get/get.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _HomePage_DialogState();
}

class _HomePage_DialogState extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
              color: Colors.grey, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Get.to(Page_2());
              },
              child: Text('Navigate to Page_2',
                  style: TextStyle(color: Colors.black))),
        ),
      ),
    );
  }
}

