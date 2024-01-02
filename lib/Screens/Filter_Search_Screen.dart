import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Component/BTN_Component.dart';

class FilterSearchScreen extends StatefulWidget {
  const FilterSearchScreen({Key? key}) : super(key: key);

  @override
  _FilterSearchScreenState createState() => _FilterSearchScreenState();
}

class _FilterSearchScreenState extends State<FilterSearchScreen> {
 bool VegetarianisClicked=false;
 bool VegisClicked=false;
 bool dairyisClicked=false;
 bool nutisClicked=false;
 bool partisClicked=false;
 bool beefisClicked=false;

  double ingredients = 0;
  double timeUpto = 0;
  RangeValues calories = RangeValues(0, 1200);
  RangeValues carbs=RangeValues(0, 20);
  RangeValues protein=RangeValues(0, 100);
  RangeValues fat=RangeValues(0, 110);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Center(child: Text("Filter your search")),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black54,
                  ),
                  child: Center(child: Text("ADD INGREDIENTS")),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ingredients Upto:  ${ingredients.toInt()}"),
                    Slider(
                      value: ingredients,
                      onChanged: (newIngredient) {
                        setState(() {
                          ingredients = newIngredient;
                        });
                      },
                      inactiveColor: Colors.greenAccent,
                      activeColor: Colors.green,
                      min: 0,
                      max: 30,
                      divisions: 30,
                      label: "${ingredients.toInt()}",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Time Upto:  ${timeUpto.toInt()}"),
                    Slider(
                      value: timeUpto,
                      onChanged: (newTimeUpto) {
                        setState(() {
                          timeUpto = newTimeUpto;
                        });
                      },
                      inactiveColor: Colors.greenAccent,
                      activeColor: Colors.green,
                      min: 0,
                      max: 200,
                      divisions: 40,
                      label: "${timeUpto.toInt()}",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 5,
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Diet", style: TextStyle(fontSize: 20)),
                          Row(
                            children: [
                              BTNComponent(

                                fgcolor: Colors.white,
                                title: "Vegetarian",
                                onPressed: () {
                                setState(() {
                                  VegetarianisClicked=!VegetarianisClicked;
                                });
                              },

                                bgcolor: VegetarianisClicked? Colors.green: Colors.black54,),
                              BTNComponent(
                                fgcolor: Colors.white,
                                title: "Vegan", onPressed: () {
                                setState(() {
                                  VegisClicked=!VegisClicked;
                                });
                              },
                                bgcolor: VegisClicked? Colors.green: Colors.black54,),
                            ],
                          ),
                          Row(
                            children: [
                              BTNComponent(
                                fgcolor: Colors.white,
                                title: "Dairy-Free", onPressed: () {
                                setState(() {
                                  dairyisClicked=!dairyisClicked;
                                });
                              }, bgcolor:  dairyisClicked? Colors.green: Colors.black54,),
                              BTNComponent(
                                fgcolor: Colors.white,
                                title: "Nut-Free", onPressed: () {
                                setState(() {
                                  nutisClicked=!nutisClicked;
                                });
                              }, bgcolor: nutisClicked? Colors.green: Colors.black54,),
                            ],
                          ),
                          Row(
                            children: [
                              BTNComponent(
                                fgcolor: Colors.white,
                                title: "Part-Free", onPressed: () {
                                setState(() {
                                  partisClicked=!partisClicked;
                                });
                              }, bgcolor: partisClicked? Colors.green: Colors.black54,),
                              BTNComponent(
                                fgcolor: Colors.white,
                                title: "Beef-Free", onPressed: () {
                                setState(() {
                                  beefisClicked=!beefisClicked;
                                });
                              }, bgcolor: beefisClicked? Colors.green: Colors.black54,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.black12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Calories per Serving"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Min: ${calories.start.toInt()}"),
                              Text("Max: ${calories.end.toInt()}"),
                            ],
                          ),
                        ),
                        RangeSlider(
                          values: calories,
                          onChanged: (value) {
                            setState(() {
                               calories=value;
                            });
                          },
                          inactiveColor: Colors.greenAccent,
                          activeColor: Colors.green,
                          max: 1200,
                          min: 0,
                          divisions: 50,
                          labels: RangeLabels(
                            "${calories.start.toInt()}",
                            "${calories.end.toInt()}",

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Carbs per Serving"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Min: ${carbs.start.toInt()}"),
                              Text("Max: ${carbs.end.toInt()}"),
                            ],
                          ),
                        ),
                        RangeSlider(
                          values: carbs,
                          onChanged: (value) {
                            setState(() {
                               carbs=value;
                            });
                          },
                          inactiveColor: Colors.greenAccent,
                          activeColor: Colors.green,
                          max: 20,
                          min: 0,
                          divisions: 20,
                          labels: RangeLabels(
                            "${carbs.start.toInt()}",
                            "${carbs.end.toInt()}",

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.black12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Protein per Serving"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Min: ${protein.start.toInt()}"),
                              Text("Max: ${protein.end.toInt()}"),
                            ],
                          ),
                        ),
                        RangeSlider(
                          values: protein,
                          onChanged: (value) {
                            setState(() {
                              protein=value;
                            });
                          },
                          inactiveColor: Colors.greenAccent,
                          activeColor: Colors.green,
                          max: 100,
                          min: 0,
                          divisions: 33,
                          labels: RangeLabels(
                            "${protein.start.toInt()}",
                            "${protein.end.toInt()}",

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fats per Serving"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Min: ${fat.start.toInt()}"),
                              Text("Max: ${fat.end.toInt()}"),
                            ],
                          ),
                        ),
                        RangeSlider(
                          values: fat,
                          onChanged: (value) {
                            setState(() {
                              fat=value;
                            });
                          },
                          inactiveColor: Colors.greenAccent,
                          activeColor: Colors.green,
                          max: 110,
                          min: 0,
                          divisions: 55,
                          labels: RangeLabels(
                            "${fat.start.toInt()}",
                            "${fat.end.toInt()}",

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  child: Center(child: Text("Apply Filters")),
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
