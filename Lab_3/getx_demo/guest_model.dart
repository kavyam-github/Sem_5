class GuestModel{
 String?_name;

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }
 String?_city;

  String? get city => _city;

  set city(String? value) {
    _city = value;
  }
 bool?_isFavourite;

  bool? get isFavourite => _isFavourite;

  set isFavourite(bool? value) {
    _isFavourite = value;
  }

GuestModel({
    String?name,
    String?city,
    bool?isFavourite,
}) : _isFavourite = isFavourite,
      _city = city,
      _name = name;
/*
 UserModel({
   String? name,
   String? enrollmentNo,
   int? primaryKey,
   bool? isFavorite,
 }) : _isFavorite = isFavorite,
       _primaryKey = primaryKey,
       _enrollmentNo = enrollmentNo,
       _name = name;
}
*/


}