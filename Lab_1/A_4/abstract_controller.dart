import 'package:demo_project/Lab_1/A_4/abstract_model.dart';

class ShapeController {
  List<Shape> getShapes() {
    return [
      Circle(5),
      Rectangle(4, 6),
      Circle(3),
      Rectangle(5, 5),
    ];
  }
}