import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item {
  String name;
  RxBool isFavorite;

  Item(this.name, {bool isFavorite = false}) : isFavorite = isFavorite.obs;
}

class ItemController extends GetxController {
  var items = <Item>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll([
      Item('book'),
      Item('car'),
      Item('bike'),
      Item('yacht'),
    ]);
  }

  void toggleFavorite(int index) {
    items[index].isFavorite.toggle();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ItemController controller = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Favorite Toggle with RxList',
      home: Scaffold(
        appBar: AppBar(title: Text('Favorites List')),
        body: Obx(() {
          return ListView.builder(
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              final item = controller.items[index];
              return ListTile(
                title: Text(item.name),
                trailing: Obx(() => IconButton(
                  icon: Icon(
                    item.isFavorite.value
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: item.isFavorite.value ? Colors.red : null,
                  ),
                  onPressed: () => controller.toggleFavorite(index),
                )),
              );
            },
          );
        }),
      ),
    );
  }
}
