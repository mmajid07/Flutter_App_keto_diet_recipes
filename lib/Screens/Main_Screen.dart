import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Drawer_Screen/Keto_Calculator.dart';
import 'package:keto_diet_recipes/Screens/Breakfast_list.dart';
import 'package:keto_diet_recipes/Screens/Dinner_List.dart';
import 'package:keto_diet_recipes/Screens/Filter_Search_Screen.dart';

import '../Drawer_Screen/Favorite_List.dart';
import '../Drawer_Screen/Shoping_List.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var searchVal = false;



  final List<String> imageList = [
    "assets/images/foodc1.jpg",
    "assets/images/foodc2.jpg",
  ];
  final List<String> recipes = ["BREAKFAST RECIPES", "LUNCH RECIPES"];
  final List<Widget> recipesList = [BreakfastListScreen(), DinnerListScreen()];

  List <String> filterList=[];

   void filterItem(String query){
     setState(() {
       filterList=recipes.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();

     });
   }
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterList=recipes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            "Breakfast Recipes",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                print("clicked");
                setState(() {
                  searchVal = !searchVal;
                  print("value=" + searchVal.toString());
                });
              },
              icon: Icon( searchVal ? Icons.close : Icons.search, color: Colors.white, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FilterSearchScreen()),
                );
              },
              icon: Icon(Icons.format_indent_increase_sharp, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          searchVal ?  Visibility(
            visible: searchVal,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    onChanged: filterItem,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),

                Container(
                   height: 200,
                  child: ListView.builder(
                      itemCount: filterList.length,
                      itemBuilder: (context , index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>recipesList[index]));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(filterList[index], style: TextStyle(fontSize: 20),),
                                  Divider(color: Colors.grey,),
                                ],
                              )),
                        );
                      }),
                )
              ],
            ),
          ) :
          Expanded(
            child: ListView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => recipesList[index],
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 300,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    imageList[index],
                                    height: 260,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                right: 30,
                                bottom: 0,
                                top: 210,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          recipes[index],
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 40),
                                        child: Divider(color: Colors.grey),
                                      ),
                                      Center(
                                        child: Text(
                                          "Count RECIPES",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                "KETO",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("What is keto"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.format_indent_increase_sharp),
              title: Text("Smart Recipe Finder"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("Keto Calculator"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>KetoCalculatorScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite List"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoriteList()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shopping List"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingList()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shortcut),
              title: Text("Create ShortCut"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.not_interested),
              title: Text("Ad-Free"),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Support Us"),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Contact Us"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("Rate Us"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share App"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.more),
              title: Text("More Apps"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Privacy and Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
