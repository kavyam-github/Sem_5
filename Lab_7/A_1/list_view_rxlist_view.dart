import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  var items = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll(['you', 'me', 'i']);
  }

  void addItem(String item) {
    items.add(item);
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ItemController itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RxList with ListView',
      home: Scaffold(
        appBar: AppBar(title: Text('RxList Example')),
        body: Column(
          children: [
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: itemController.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(itemController.items[index]),
                    );
                  },
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  itemController.addItem('Item ${itemController.items.length + 1}');
                },
                child: Text('Add Item'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
