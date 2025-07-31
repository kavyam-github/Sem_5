import 'package:demo_project/utils/import_export.dart';

class NavigateScreen2NamedRoute extends StatelessWidget {
  const NavigateScreen2NamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigate Screen 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("Go Back to Screen 1"),
        ),
      ),
    );
  }
}