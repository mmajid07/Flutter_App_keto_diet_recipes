import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Component/BTN_Component.dart';
import 'package:keto_diet_recipes/Component/Text_Field_Component.dart';
import 'package:keto_diet_recipes/Services/Font_Style.dart';
import 'package:keto_diet_recipes/Services/List_Screen.dart';
import 'package:keto_diet_recipes/Services/String_Data.dart';

class KetoCalculatorScreen extends StatefulWidget {
  const KetoCalculatorScreen({super.key});

  @override
  State<KetoCalculatorScreen> createState() => _KetoCalculatorScreenState();
}

class _KetoCalculatorScreenState extends State<KetoCalculatorScreen> {


  final  ageController=TextEditingController();
  final LBController=TextEditingController();
  final KGController= TextEditingController();
  final cmController= TextEditingController();
  final feetController= TextEditingController();
  final inchfeetController= TextEditingController();
  final bodyFatController= TextEditingController();
  final loseWeightController= TextEditingController();
  final proteinloseWeightController= TextEditingController();
  final carbloseWeightController= TextEditingController();


  final textData=TextString();
  final custemTextStyle=CustemTextStyle();
  final radio=RadioList();

  int selectedValue=0;
  int selectedButon=0;

  Widget CustemButton(String text, int index){
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          onPressed: ( ){

            setState(() {
              selectedButon=index;
            });
          },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          backgroundColor: (selectedButon==index)? Colors.green:Colors.white60,
          foregroundColor: (selectedButon==index)? Colors.white: Colors.black,
        ),
          child: Text(text, textAlign: TextAlign.center,),),
    );
  }

  Widget CustemButtonData( ){
    if(selectedButon==0){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text("by"),

                    TextFieldComponent(controller: loseWeightController),

                    Text("%"),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("* 5 to 10% is a small gain/lose"),
                    Text("* 10 to 20 is a moderate gain/lose"),
                    Text("* 20%+ is a large gain/loss"),
                  ],
                ),
              )
            ],
          ),


          SizedBox(height: 15,),
          Text("How much do you want to consume?", style: CustemTextStyle.textStyle,),
          SizedBox(height: 15,),
          Text("Protein Ratio", style: CustemTextStyle.textStyle,),
          Text("(Grams of protein per pound of lean body mass)"),

          SizedBox(height: 15,),
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [

                    TextFieldComponent(controller: proteinloseWeightController),

                    Text("g"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("* if you're sedentary, then 0.6g and 0.8g"),
                    Text("* if you're active, then 0.8g and 1.0g"),
                    Text("* if you left widgets,then 1.0g and 1.2g"),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 15,),
          Text("Net Carb Intake", style: CustemTextStyle.textStyle,),
          SizedBox(height: 15,),
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [

                    TextFieldComponent(controller: proteinloseWeightController),
                    Text("g"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("It is highly recommended that on a ketogenic diet, you keep your carb intake to 5% or less of total calories. this works out to be an average of 20g to 30g net carbs a day  "),

                  ],
                ),
              )
            ],
          ),

          SizedBox(
            height: 15,
          ),



        ],
      );
    }
    else if(selectedButon==1){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("How much do you want to consume?", style: CustemTextStyle.textStyle,),
          SizedBox(height: 15,),
          Text("Protein Ratio", style: CustemTextStyle.textStyle,),
          Text("(Grams of protein per pound of lean body mass)"),

          SizedBox(height: 15,),
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [

                    TextFieldComponent(controller: proteinloseWeightController),

                    Text("g"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("* if you're sedentary, then 0.6g and 0.8g"),
                    Text("* if you're active, then 0.8g and 1.0g"),
                    Text("* if you left widgets,then 1.0g and 1.2g"),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 15,),

          Text("Net Carb Intake", style: CustemTextStyle.textStyle,),
          SizedBox(height: 15,),
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [

                    TextFieldComponent(controller: proteinloseWeightController),

                    Text("g"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("It is highly recommended that on a ketogenic diet, you keep your carb intake to 5% or less of total calories. this works out to be an average of 20g to 30g net carbs a day  "),

                  ],
                ),
              )
            ],
          ),

          SizedBox(
            height: 15,
          ),



        ],
      );
    }
    else if(selectedButon==2){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text("by"),

                    TextFieldComponent(controller: loseWeightController),

                    Text("%"),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("* 5 to 10% is a small gain/lose"),
                    Text("* 10 to 20 is a moderate gain/lose"),
                    Text("* 20%+ is a large gain/loss"),
                  ],
                ),
              )
            ],
          ),


          SizedBox(height: 15,),
          Text("How much do you want to consume?", style: CustemTextStyle.textStyle,),
          SizedBox(height: 15,),
          Text("Protein Ratio", style: CustemTextStyle.textStyle,),
          Text("(Grams of protein per pound of lean body mass)"),

          SizedBox(height: 15,),
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [

                    TextFieldComponent(controller: proteinloseWeightController),

                    Text("g"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("* if you're sedentary, then 0.6g and 0.8g"),
                    Text("* if you're active, then 0.8g and 1.0g"),
                    Text("* if you left widgets,then 1.0g and 1.2g"),
                  ],
                ),
              )
            ],
          ),

          SizedBox(
            height: 15,
          ),
          Text("Net Carb Intake", style: CustemTextStyle.textStyle,),
          SizedBox(height: 15,),
          Row(
            children: [

              Expanded(
                flex: 2,
                child: Row(
                  children: [

                    TextFieldComponent(controller: proteinloseWeightController),

                    Text("g"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("It is highly recommended that on a ketogenic diet, you keep your carb intake to 5% or less of total calories. this works out to be an average of 20g to 30g net carbs a day  "),

                  ],
                ),
              )
            ],
          ),

          SizedBox(
            height: 15,
          ),



        ],
      );
    }

    return Container();
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("Keto Calculator"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(textData.unitofMeasure, style: TextStyle(fontSize: 20),),
              Row(
                children: [
                  BTNComponent(
                    fgcolor: Colors.white,
                      bgcolor: Colors.green,
                      title: "Imperial (pounds)",
                      onPressed: ( ){}),
                  BTNComponent(
                      fgcolor: Colors.black,
                      bgcolor: Colors.black12,
                      title: "Metric",
                      onPressed: ( ){}),
                ],
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(textData.gender,style: CustemTextStyle.textStyle),

                  Text(textData.age,style: CustemTextStyle.textStyle),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BTNComponent(
                          fgcolor: Colors.white,
                          bgcolor: Colors.green,
                          title: "Male",
                          onPressed: ( ){}),
                      BTNComponent(
                          fgcolor: Colors.black,
                          bgcolor: Colors.black12,
                          title: "Female",
                          onPressed: ( ){}),
                    ],
                  ),



                  Row(
                    children: [
                      TextFieldComponent(
                          controller: ageController),
                      Text("yrs")
                    ],
                  ),
                ],
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(textData.weight, style: CustemTextStyle.textStyle,),
                      Row(
                        children: [
                          TextFieldComponent(
                              controller: LBController,
                          ),
                          Text("lb"),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(textData.weight, style: CustemTextStyle.textStyle,),
                      Row(
                        children: [
                          TextFieldComponent(
                            controller: feetController,
                          ),
                          Text("ft"),
                          TextFieldComponent(
                            controller: inchfeetController,
                          ),
                          Text("in"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

               SizedBox(
                 height: 15,
               ),

              Text(textData.active, style: CustemTextStyle.textStyle,),

               ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                   itemCount: radio.radioList.length,
                   itemBuilder: (context, index){
                     return RadioListTile(
                       activeColor: Colors.green,
                       title: Text(radio.radioList[index].toString()),
                         value: index,
                         groupValue:  selectedValue,
                         onChanged: (value){
                            setState(() {
                              selectedValue=value!;
                            });
                         });
                   }),
              
              Text(textData.bodyFat.toString(),style: CustemTextStyle.textStyle,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 58,
                      child: TextFieldComponent(controller: bodyFatController)),
                  Text("%", style: CustemTextStyle.textStyle,),
                  BTNComponent(
                    bgcolor: Colors.black12,
                      fgcolor: Colors.black,
                      title: "Check by BMI",
                      onPressed: ( ){}),
                  
                  Text("OR",style: TextStyle(fontSize: 20),),
                  Text("Visually\nEstimate",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(height: 15,),
              Text(textData.weightGoal, style: CustemTextStyle.textStyle,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Expanded(
                     flex: 6,

                       child: CustemButton("Lose Weight", 0)),
                  Expanded(
                      flex: 7,
                      child: CustemButton("Maintain Weight", 1)),
                  Expanded(
                    flex: 6,
                      child: CustemButton("Gain Muscle", 2)),

                ],
              ),
              SizedBox(height: 15,),
              CustemButtonData(),

              Center(
                child: SizedBox(
                  width: 250,
                  child: BTNComponent(
                      bgcolor: Colors.green,
                      fgcolor: Colors.white,
                      title: "Calculate", onPressed: ( ){}),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Text("How much should you be eating per day"),

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(

                    child: Container(
                      height: 100,
                      color: Colors.brown,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('0', style: TextStyle(color: Colors.white),),
                          Text("Calories", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 5,),

                  Expanded(

                    child: Container(
                      height: 100,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('0', style: TextStyle(color: Colors.white),),
                          Text("Fat \n(grams)", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),

                  Expanded(

                    child: Container(
                      height: 100,
                      color: Colors.blueAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('0', style: TextStyle(color: Colors.white),),
                          Text("Protein\n (grams)", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 5,),
                  Expanded(

                    child: Container(
                      height: 100,
                      color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('0', style: TextStyle(color: Colors.white),),
                          Text("Net Carbs\n (grams)", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),


    );
  }
}
