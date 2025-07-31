// lib/controllers/user_controller.dart
import 'package:demo_project/Lab_12/lab_12_1/model.dart';
import 'package:demo_project/Lab_12/lab_12_1/services.dart';
import 'package:demo_project/utils/import_export.dart';

class UserController extends GetxController {
  final api = ApiService();

  void postUser() async {
    User newUser = User(name: 'John Doe', email: 'john@example.com');
    final response = await api.createUser(newUser);

    if (response.statusCode == 201) {
      print("User Created: ${response.body}");
    } else {
      print("Error: ${response.statusText}");
    }
  }

  void putUser() async {
    User updatedUser = User(id: 1, name: 'Updated Name', email: 'updated@example.com');
    final response = await api.updateUser(1, updatedUser);

    if (response.statusCode == 200) {
      print("User Updated: ${response.body}");
    } else {
      print("Error: ${response.statusText}");
    }
  }
}
