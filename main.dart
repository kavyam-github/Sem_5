import 'package:demo_project/Lab_3/A_1/user_view.dart';
import 'package:demo_project/Lab_7/A_1/list_view_rxlist_view.dart';

import 'package:demo_project/utils/import_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyApp(),
    );
  }
}

