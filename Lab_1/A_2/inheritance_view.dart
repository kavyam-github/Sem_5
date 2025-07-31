import 'package:demo_project/Lab_1/A_2/inheritance_controller.dart';
import 'package:demo_project/Lab_1/A_2/inheritance_model.dart';
import 'package:demo_project/utils/import_export.dart';

class InheritanceView extends StatefulWidget {
  const InheritanceView({super.key});

  @override
  State<InheritanceView> createState() => _InheritanceViewState();
}

class _InheritanceViewState extends State<InheritanceView> {
  @override
  Widget build(BuildContext context) {
    InheritanceModel inheritancemodel = InheritanceController().inheritanceModel();
    TextEditingController CarnameController=TextEditingController();
    TextEditingController CarcolorController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          APPBAR_INHERITACE_CLASS,
          style: TextStyle(color: Colors.grey, fontSize: 50),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(controller: CarnameController,),
            Text(
              'Car_Name : ${inheritancemodel.Car_Name}',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(controller: CarcolorController,),
            Text(
              'Car_Color : ${inheritancemodel.Car_Color}',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
