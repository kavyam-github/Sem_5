import 'package:demo_project/utils/import_export.dart';

class StudentController{
  StudnetModel _studnetModel =StudnetModel(name: 'Kavyam', sem: '5');

  StudnetModel getStudentDetail(){
    return _studnetModel;
  }
}