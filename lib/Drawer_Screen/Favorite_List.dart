import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:keto_diet_recipes/Model/KetoModel.dart';

import '../Boxes/Boxes.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Center(child: Text("Favorite List")),
        actions: [
          Padding(
            padding: const EdgeInsets.only( right: 20),
            child: TextButton(onPressed: (){
              setState(() {
                var data= Boxes.getData();
                data.clear();
              });
            },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                child: Text("Clear List")),
          ),
        ],
      ),
      body: ValueListenableBuilder<Box<KetoModel>>(
        valueListenable: Boxes.getData().listenable(),
        builder: (context , Box, _){
          var data=Box.values.toList().cast<KetoModel>();
          return  ListView.builder(
            itemCount: Box.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage(data[index].productImage.toString()),),
                    title:Text(data[index].productName.toString(), style: TextStyle(fontSize: 20),),
                  ),




                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Container(
                  //           height: 90,
                  //             width: 90,
                  //             decoration: BoxDecoration(
                  //               shape: BoxShape.circle
                  //             ),
                  //             child:CircleAvatar(backgroundImage: AssetImage(data[index].productImage.toString()),)),
                  //       ],
                  //     ),
                  //     Column(
                  //       children: [
                  //         Text(data[index].productName.toString(),
                  //
                  //           style: TextStyle(fontSize: 20),),
                  //       ],
                  //     ),
                  //
                  //
                  //   ],
                  // ),


                );
              });

        },
      ),
    );
  }
}
