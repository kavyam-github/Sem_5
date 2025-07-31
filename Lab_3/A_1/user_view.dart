import 'package:demo_project/Lab_3/A_1/add_user_page.dart';
import 'package:demo_project/utils/common_function.dart';
import 'package:demo_project/utils/import_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Needed for Scaffold, ListTile, etc.

class UserView extends StatefulWidget {
  const UserView({super.key});
  static UserController userController = UserController();

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  UserController _userController = UserController();

  // FIX: Added refreshScreen function to trigger UI rebuild
  void refreshScreen([bool value = true]) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APPBAR_UserList),
        actions: [
          IconButton(
            onPressed: () {
              CmnFunctions().navigatePush(
                context,
                AddUserPage(),
                refreshScreen,
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: UserView.userController.getUserFromList().isNotEmpty
          ? ListView.builder(
        itemBuilder: (context, index) {
          dynamic user = UserView.userController.getUserFromList()[index];
          return ListTile(
            onTap: () {
              CmnFunctions().navigatePush(
                context,
                AddUserPage(user: user, index: index),
                refreshScreen,
              );
            },
            /*leading: IconButton(
              onPressed: () {
                UserView.userController.toggleUserFavoriteStatus(
                  user,
                  index,
                );
                refreshScreen(false);
              },
              icon: Icon(
                user[KEY_IS_FAVOURITE]
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
              ),
            ),*/
            title: Text(user[Key_Value]),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text(CMD_DELETE_DATA),
                      actions: [
                        TextButton(
                          onPressed: () {
                            UserView.userController
                                .removeUserFromList(index);
                            Navigator.pop(context);
                            refreshScreen(false);
                          },
                          child: Text(BTN_DELETE),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          );
        },
        itemCount: UserView.userController.getUserFromList().length,
      )
          : Center(
        child: Text(
          CMN_NO_DATA_FOUND,
          style: TextStyle(color: Colors.grey[400]),
        ),
      ),
    );
  }
}

