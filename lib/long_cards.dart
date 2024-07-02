import 'package:flutter/material.dart';
import 'package:flutter_application_3/short_cards.dart';



enum gender{
  male, female;
}

int yourHeight= 160;
double? result = 0 ;
gender yourGender = gender.female;
Color? iconColor;
String? category = "Normal";
class LongCard extends StatefulWidget {
  const LongCard({super.key});

  @override
  State<LongCard> createState() => _LongCardState();
}

class _LongCardState extends State<LongCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Container(
              width: 364,
              height: 174,
              margin: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                ),
                child:   Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 8 , right: 8 , top: 12),
                  child:Text(
                    "Height (cm)",
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 39, 44),
                      fontSize: 24,
                      fontWeight: FontWeight.w700, 
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Padding(padding: EdgeInsets.only(right: 40 , bottom: 20, left: 8, top: 8),
                      child: Text("$yourHeight", style: 
                      TextStyle(
                        fontSize: 60, fontWeight: FontWeight.w700
                      ),)),
                      Column(children: [ 
                        IconButton(onPressed: (){
                          setState(() {
                            yourHeight += 1;
                          });
                        }, icon: Icon(Icons.add , size: 40,color: Colors.black,)),
                        IconButton(onPressed: (){setState(() {
                            yourHeight -= 1;
                          });}, icon: Icon(Icons.remove , size: 40,color: Colors.black))
                      ],)
                    ],
                  ),
      ])
                ,),
                //gender box
        Container(
              width: 364,
              height: 220,
              margin: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                ),
              child:  Column( 
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 8 , right: 8 , top: 12, bottom: 8),
                  child:Text(
                    "Gender",
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 39, 44),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Padding( padding: EdgeInsets.only(right: 16 , bottom: 16 , left: 8 , top:8),
                          child: 
                        Text(
                        "I'm a ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 36, 39, 44),
                          fontSize: 52,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  yourGender = gender.male;
                                });
                              }, icon: Icon(Icons.male, size: 50, color:
                              yourGender == gender.male ? Colors.pink: const Color.fromARGB(132, 0, 0, 0)),),
                              IconButton(onPressed: (){
                                setState(() {
                                  yourGender = gender.female;
                                });
                              }, icon: Icon(Icons.female, size: 50,
                              color: 
                              yourGender == gender.female ? Colors.pink: const Color.fromARGB(132, 0, 0, 0),)),
                              
                            ],
                          ),
                        )
                                    ],
                  )
                ],
              ),
              ),

              // result box
            Container(
              width: 364,
              height: 174,
              margin: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                ),
                child:  Padding( padding: EdgeInsets.only(left: 8 , right: 8 , top: 12, bottom: 8),
                  child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text("Your Result Is" ,style: TextStyle(
                      color: Color.fromARGB(255, 36, 39, 44),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )
                    ),
                    Text("$result",style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),),
                    Text("$category", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
                    ],
                    ),
                ),
                 ),
                 Container(width: 140 , height: 60,
                 child: Padding (padding: EdgeInsets.only(bottom:12),
                  child:ElevatedButton(onPressed:(){
                  setState(() {
                    double inaResult = (yourWeight/((yourHeight/100)*(yourHeight/100)));
                    String formating = inaResult.toStringAsFixed(2);
                    result = double.parse(formating);
                    if (result! <= 18.4) {
                        category = "Underweight";
                      } 
                      else if (result! >= 18.5 && result! <= 24.9) {
                        category = "Normal";
                      }
                       else if (result! >= 25 && result! <= 39.9) {
                        category = "Overweight";
                      }
                       else if (result! >= 40) {
                        category = "Obese";
                      }
                  });
                 } , child: Text("Calculate", style: TextStyle(color: Colors.black),),)))
      ],
    );
  }
}