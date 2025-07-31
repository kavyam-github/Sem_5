import 'package:demo_project/Lab_3/getx_demo/guest_model.dart';
import 'package:demo_project/utils/import_export.dart';

class GuestController extends GetxController{
 RxList<dynamic> guestList=[].obs;
 TextEditingController nameController=TextEditingController();
 TextEditingController cityController=TextEditingController();
 //TextEditingController isFavouriteController=TextEditingController();
 void addGuestToList() {
   guestList.add(
     GuestModel(
       name: nameController.text.toString(),
       city: cityController.text.toString(),
       isFavourite: false,
     ),
   );
   nameController.text = '';
   cityController.text = '';
 }

 void updateFavorite(index) {
   GuestModel guestModel = guestList[index];
   guestModel.isFavourite = !guestModel.isFavourite!;
   guestList[index] = guestModel;
 }

 void editUserToList() {}

 void deleteUserFromList() {}

}