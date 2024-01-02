import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:keto_diet_recipes/Model/KetoModel.dart';
import 'package:keto_diet_recipes/Screens/Splash_Screen.dart';
import 'package:hive/hive.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(KetoModelAdapter());
  Hive.openBox<KetoModel>("KetoRecipes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const SplashScreen(),
    );
  }
}

class testClass extends StatelessWidget {
  const testClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
          itemBuilder: (context, index){
            return Column(
              children: [
                Image(image: AssetImage("assets/images/breakf1.jpg")),
              ],
            );
          }),
    );
  }
}

 