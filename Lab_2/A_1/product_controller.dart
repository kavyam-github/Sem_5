import 'package:demo_project/Lab_2/A_1/product_model.dart';

class FavouriteController {
  final FavouriteModel _model = FavouriteModel();

  List<Map<String, dynamic>> get items => FavouriteModel.favouriteList;

  void toggleFavourite(int index) {
    _model.toggleFavourite(index);
  }

  bool isFavourite(int index) {
    return FavouriteModel.favouriteList[index]['isFavourite'];
  }
}
