import 'package:demo_project/utils/import_export.dart';

class UserController{
  User_list _model =User_list();
  void addUserToList(user)=>  _model.addUserToList(user);

  void removeUserFromList(index)=> _model.removeUserFromList(index);

  List<dynamic>getUserFromList()=> _model.getUserFromList();

  void updateUserToList(index,user)=> _model.updateUserToList(index,user);
}