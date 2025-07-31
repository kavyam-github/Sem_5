import 'package:demo_project/Lab_1/A_1/studnet_controller.dart';
import 'package:demo_project/utils/import_export.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  @override
  Widget build(BuildContext context) {
    StudnetModel studnetModel = StudentController().getStudentDetail();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          APPBAR_STUDENT_DETAILS,
          style: TextStyle(color: Colors.grey, fontSize: 50),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Student_Name : ${studnetModel.name}',
              style: TextStyle(color: Colors.purpleAccent, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Student_Sem : ${studnetModel.sem}',
              style: TextStyle(color: Colors.purpleAccent, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
