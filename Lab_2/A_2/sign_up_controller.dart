import 'package:demo_project/Lab_2/A_2/sign_up_model.dart';

class SignupController {
  final SignupModal _model = SignupModal();

  void addUser(String name, String email, String phoneNumber,
      String password, String confirmPassword) {
    _model.addSignupDetails(name, email, phoneNumber, password, confirmPassword);
  }

  List<Map<String, dynamic>> getUsers() {
    return _model.getSignupDetails();
  }
}