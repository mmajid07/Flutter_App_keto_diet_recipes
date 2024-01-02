import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Screens/Slide_List_Detail.dart';

class BreakfastListScreen extends StatelessWidget {
  BreakfastListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final List<String> breakfastImage=[
      "assets/images/breakf1.jpg",
      "assets/images/breakf2.jpg",
    ];
    final List<String> breakfName=[
      "3 Ingredient Cauliflower Hash Browns",
      "Almond Cream Cheese Keto Pancakes",

    ];
    final List<String> breakMint=[
      "45",
      "5",
    ];
    final List<String> breakServes=[
      "6",
      "4"
    ];

    final List<String> carblist=[
      "3.2g",
      "3.9g",
    ];
    final List<String> proteinlist=[
      "7g",
      "11.2g",
    ];
    final List<String> fatlist=[
      "11.2g",
      "19.9g",
    ];
    final List<String> calorieslist=[
      "164",
      "234",
    ];
    final List<List<String>> ingredientList=[
      [
        "1 small head grated cauliflower (about 3 cups)",
        "1 Large Egg",
        "3/4 cup Shredded Cheddar Cheese",
        "1/4 tsp Cayenne Pepper (optional)",
        "1/4 tsp garlic powder",
        "1/2 tsp Pink Himalayan Salt",
        "1/8 tsp black pepper",
      ],
      [
        "1/2 cup plus 1 tbsp almond flour (60g)",
        "1/2 cup full fat cream cheese (125g)",
        "4 eggs",
        "1/2 tsp cinnamon",
        "1 tsp granulated sweetener (optional)",
        "Butter for frying"
      ],
    ];

    final List<List<String>> instructionList=[
      [
        "Grate entire head of cauliflower",
        "Microwave for 3 mint and let cool",
        "Place rung out cauliflower in a bowl, add rest of ingredients and combine well",
        "Form into six square shaped hash browns on a greased baking tray",
        "Place in a 400 degree oven for 15 to 20 minutes",
        "Let cool for 10 minutes and hash browns will firm up. Serve warm Enjoy!",
        "Serving Size: 1/6 of recipe",
      ],
      [
        "Mix all ingredients in a blender",
        "Fry pancakes in a melted butter in a non-stick pan over a medium heat. Turn over once the center begins to bubble. The pancakes should be smallish, ca 10-12 cm in diametar",
        "About the right size to fit them in the toaster the next day should you be so lucky to have any leftovers.",
        "Serving Size: 2 pancakes",
      ],
    ];


    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          title: Center(child: Text("BreakFast Recipes", style: TextStyle(color: Colors.white),)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridView.builder(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 4,
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                childAspectRatio: 0.64,
              ),
              itemCount: breakfastImage.length,
              itemBuilder: (context , index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        SlideListDetail(

                          slide: breakfastImage,
                          name:breakfName,
                          min:breakMint,
                          serves:breakServes,
                          calories:calorieslist,
                          carbs:carblist,
                          protein:proteinlist,
                          fat:fatlist,
                          ingredient:ingredientList,
                            instructionList:instructionList,

                        )

                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(20)),
                            child: Image.asset(breakfastImage[index], height: 130, fit: BoxFit.cover,width: double.infinity)),

                        Spacer(),
                            Text(breakfName[index], textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined, color: Colors.green, size: 15,),
                                SizedBox(width: 5,),
                                Text(breakMint[index]+" Min",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.room_service_sharp, color: Colors.green,size: 15,),

                                Text(breakServes[index]+" Serves",style: TextStyle(fontSize: 12),),
                              ],
                            )
                          ],
                        ),


                        Spacer(),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green,
                                  ),
                                  child: Center(child: Text("Carb "+carblist[index], style: TextStyle(color: Colors.white ,fontSize: 10),)),
                                ),
                              ),
                              SizedBox(width: 2,),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green,
                                  ),
                                  child: Center(child: Text("Protein "+proteinlist[index], style: TextStyle(color: Colors.white,fontSize: 10),)),
                                ),
                              )
                            ],
                          ),
                        ),


                        SizedBox(height: 2,),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green,
                                  ),
                                  child: Center(child: Text("Fat "+fatlist[index], style: TextStyle(color: Colors.white,fontSize: 10),)),
                                ),
                              ),
                              SizedBox(width: 2,),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green,
                                  ),
                                  child: Center(child: Text("Calories "+calorieslist[index], style: TextStyle(color: Colors.white,fontSize: 10),)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                );
              }),
        )
    );
  }
}
