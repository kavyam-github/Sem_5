import 'package:demo_project/Lab_2/A_4/profile_model.dart';

class ProfileController {
  List<ProfileModel> getAllProfiles() {
    return ProfileModel.getAllProfiles();
  }

  ProfileModel getProfile() {
    return ProfileModel.getProfileData();
  }
}