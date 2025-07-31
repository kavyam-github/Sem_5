import 'package:demo_project/utils/import_export.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen1(),
  ));
}
class Controller extends GetxController {
  // RxString to observe changes in the text
  RxString textFromScreen2 = ''.obs;
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controller>(
              builder: (controller) {
                return Text(
                  'Text from Screen 2: ${controller.textFromScreen2.value}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Navigate to Screen 2
                Get.to(() => Screen2());
              },
              child: Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}