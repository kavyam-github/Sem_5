import 'package:demo_project/utils/import_export.dart';

class GuestView extends StatelessWidget {
  const GuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          APPBAR_GETX_DEMO,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),

    );
  }
}
