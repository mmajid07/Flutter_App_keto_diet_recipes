import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Model/KetoModel.dart';

import '../Boxes/Boxes.dart';

class SlideListDetail extends StatefulWidget {
  final List<String> slide;
  final List<String> name;

  final List<String> min;
  final List<String> serves;
  final List<String> carbs;
  final List<String> protein;
  final List<String> fat;
  final List<String> calories;
  final List<List<String>> ingredient;
  final List<List<String>> instructionList;

  SlideListDetail({
    Key? key,
    required this.slide,
    required this.name,
    required this.min,
    required this.serves,
    required this.carbs,
    required this.protein,
    required this.fat,
    required this.calories,
    required this.ingredient,
    required this.instructionList,
  }) : super(key: key);

  @override
  State<SlideListDetail> createState() => _SlideListDetailState();
}

class _SlideListDetailState extends State<SlideListDetail> {
  final CarouselController _carouselController = CarouselController();

  bool isfavoriteChecked=false;
  int currentSlideIndex = 0;
   List<bool> selectedIngredients=[];
   List<bool> selectedInstruction=[];

   final noteControlller= TextEditingController();
   bool isNoteCreate=true;

   Widget note(){
     return SizedBox(
       height: 300,
       width: double.infinity,
       child: TextField(
         controller: noteControlller,
         keyboardType: TextInputType.multiline,
         minLines: 6,
         maxLines: null,

         decoration: InputDecoration(

           filled: true,
           fillColor: Colors.white
         ),
       ),
     );
  }





   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedInstruction=List.generate(widget.instructionList[currentSlideIndex].length, (index) => false);
    selectedIngredients=List.generate(widget.ingredient[currentSlideIndex].length, (index) => false);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Stack(
          children: [

          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40, bottom: 45),
                color: Colors.green,
                child: GestureDetector(
                  onTapUp: (details) {
                    final screenWidth = MediaQuery.of(context).size.width;
                    final tapPosition = details.localPosition.dx;
                    if (tapPosition < screenWidth / 2) {
                      _carouselController.previousPage();
                    } else {
                      _carouselController.nextPage();
                    }
                  },
                  child: CarouselSlider(
                    carouselController: _carouselController,
                    items: widget.slide.map((imagePath) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(imagePath, fit: BoxFit.cover, width: 280, height: 400),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 350,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.7,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentSlideIndex = index;
                          selectedInstruction=List.generate(widget.instructionList[currentSlideIndex].length, (index) => false);
                          selectedIngredients=List.generate(widget.ingredient[currentSlideIndex].length, (index) => false);

                        });
                      },
                    ),
                  ),
                ),
              ),





              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          widget.name[currentSlideIndex],
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined, size: 30, color: Colors.green),
                                Text(" ${widget.min[currentSlideIndex]} Min", style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(Icons.room_service_outlined, size: 30, color: Colors.green),
                                Text(" ${widget.serves[currentSlideIndex]} Serves", style: TextStyle(fontSize: 25)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4, ),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(

                      children: [
                        Row(
                          children: [
                            Text(widget.calories[currentSlideIndex], style: TextStyle(fontSize: 25, color: Colors.green ),),
                            SizedBox(width: 5,),
                            Text("Calories", style: TextStyle(fontSize: 25, color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text("Carbs", style: TextStyle(color: Colors.grey, fontSize: 20),),
                                Text(widget.carbs[currentSlideIndex]),
                              ],
                            ),
                            Icon(Icons.circle, color: Colors.green, size: 10,fill: 1.0,),
                            Column(
                              children: [
                                Text("Protein", style: TextStyle(color: Colors.grey, fontSize: 20),),
                                Text(widget.protein[currentSlideIndex]),
                              ],
                            ),
                            Icon(Icons.circle, color: Colors.green, size: 10,fill: 1.0,),
                            Column(
                              children: [
                                Text("Fat", style: TextStyle(color: Colors.grey, fontSize: 20),),
                                Text(widget.fat[currentSlideIndex]),
                              ],
                            ),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            Text("INGREDIENTS", style: TextStyle(fontSize: 20),),
                            SizedBox(width: 40,),
                            TextButton(
                                onPressed: ( ){},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.green
                                ),
                                child: Text("Imperial / Metric", style: TextStyle(fontSize: 20),)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(color: Colors.grey, ),
                      ),




                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                          itemCount: widget.ingredient[currentSlideIndex].length,
                          itemBuilder: (context, index){
                            return CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              tileColor: Colors.red,
                              title: Text(widget.ingredient[currentSlideIndex][index].toString(), style: TextStyle(color: Colors.black, fontSize: 20),),
                              value: selectedIngredients[index],
                              activeColor: Colors.green,
                              onChanged:(bool? value) {
                                setState(() {
                                   selectedIngredients[index]=value!;
                                });
                              },
                            );
                          }),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(color: Colors.grey,),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: TextButton(
                            onPressed: ( ){},
                            style: TextButton.styleFrom(shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),

                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ADD TO SHOPPING LIST", style: TextStyle(fontSize: 20),),
                            )),
                      )



                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("INSTRUCTION", style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(color: Colors.grey, ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.instructionList[currentSlideIndex].length,
                          itemBuilder: (context , index ){
                            return  CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                                value: selectedInstruction[index],
                                activeColor: Colors.green,
                                title: Text("Step-${index+1}" , style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                subtitle: Text(widget.instructionList[currentSlideIndex][index].toString(), style: TextStyle(color: Colors.black, fontSize: 20),),
                                onChanged: (bool? value){
                                  setState(() {
                                    selectedInstruction[index]=value!;
                                  });
                                }

                            );
                          }),


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                   width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Row(
                      children: [
                        Text(isNoteCreate ?" ":"Note "),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            onPressed: ( ){
                                  if(isNoteCreate=!isNoteCreate){
                                    null;
                                  }else {
                                    note();
                                  }

                                setState(() {


                                });
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                            ),
                            child: Text(isNoteCreate ? "Create NOTE" : "Save Note")),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(child: isNoteCreate?   null :note()),
              ),
            ],
          ),




            Positioned(
              top: 400,
              right: 20,
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 10,
                            )
                          ]
                      ),
                      child: IconButton(
                          onPressed: (){
                            setState(() {
                               final data=KetoModel(productName: widget.name[currentSlideIndex].toString(),
                                   productImage: widget.slide[currentSlideIndex].toString(),
                                   ingredientData: widget.ingredient[currentSlideIndex].toString());
                              
                               final box=Boxes.getData();
                               box.add(data);
                               data.save();
                               widget.name.clear();
                               widget.slide.clear();
                               widget.ingredient.clear();

                              print("current index"+ widget.slide[currentSlideIndex]);




                            });
                          },
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(isfavoriteChecked? Icons.favorite : Icons.favorite_border, size: 30, color: Colors.green,),
                          ))),
                  SizedBox(width: 20,),
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                          )
                        ]
                      ),
                      child: IconButton(
                          onPressed: (){},
                          icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.share, size: 30, color: Colors.green,),
                          ))),
                ],
              ),
            ),
          ]
            ),
      ),

    );
  }
}
