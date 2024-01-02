import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:keto_diet_recipes/Model/KetoModel.dart';
import '../Boxes/Boxes.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key? key}) : super(key: key);

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Center(child: Text("Shopping List")),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  var box = Boxes.getData();
                  box.clear();
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Clear List"),
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder<Box<KetoModel>>(
        valueListenable: Boxes.getData().listenable(),
        builder: (context, Box, _) {

          var data = Box.values.toList().cast<KetoModel>();



          return ListView.builder(
            itemCount: Box.length,
            itemBuilder: (context, index) {
              if (index == 0 || data[index].productName != data[index - 1].productName) {
                // Display product name only if it's the first item or different from the previous item
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[index].productName.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    ListTile(
                      title: Text(data[index].ingredientData.toString(), style: TextStyle(fontSize: 18)),
                      // Add other ListTile properties here
                    ),
                    Divider(color: Colors.grey),
                  ],
                );
              } else {
                // Don't display the product name for subsequent items with the same product name
                return Column(
                  children: [
                    ListTile(
                      title: Text(data[index].ingredientData.toString(), style: TextStyle(fontSize: 18)),
                      // Add other ListTile properties here
                    ),
                    Divider(color: Colors.grey),
                  ],
                );
              }
            },
          );
        },
      ),
    );
  }
}
