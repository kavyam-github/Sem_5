import 'package:demo_project/Lab_5/A_3/navigate_screen_namedRoute.dart';
import 'package:demo_project/utils/import_export.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => const NavigateScreen1NamedRoute()),
      GetPage(name: '/screen2', page: () => const NavigateScreen2NamedRoute()),
    ],
  ));
}

class NavigateScreen1NamedRoute extends StatelessWidget {
  const NavigateScreen1NamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigate Screen 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/screen2');
          },
          child: const Text("Go to Screen 2"),
        ),
      ),
    );
  }
}
