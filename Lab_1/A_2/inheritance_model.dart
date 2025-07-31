class InheritanceModel {
  String Car_Name;
  String Car_Color;

  InheritanceModel({
    required this.Car_Name,
    required this.Car_Color,
  });
}

class BMW extends InheritanceModel {
  BMW({required String Car_Name,
    required String Car_Color
  }): super(
      Car_Name: Car_Name,
      Car_Color:Car_Color);
}
