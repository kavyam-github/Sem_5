import 'package:demo_project/Lab_3/A_1/user_view.dart';
import 'package:demo_project/utils/import_export.dart';

class AddUserPage extends StatelessWidget {
  dynamic user;
  int? index;

  AddUserPage({super.key, this.user, this.index}) {
    if (user != null) _nameController.text = user[Key_Value];
  }

  var _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(APPBAR_ADD_USER_PAGE)),
      body: Column(
        children: [
          TextFormField(controller: _nameController),
          ElevatedButton(
            onPressed: () {
              if (user != null) {
                user[Key_Value] = _nameController.text.toString();
                UserView.userController.updateUserToList(user, index);
              } else {
                Map<String, dynamic> newUser = {};
                newUser[Key_Value] = _nameController.text.toString();
               // newUser[KEY_IS_FAVOURITE] = false;
                UserView.userController.addUserToList(newUser);
              }

              Navigator.pop(context, true);
            },
            child: Text(BTN_SAVE),
          ),
        ],
      ),
    );
  }
}
