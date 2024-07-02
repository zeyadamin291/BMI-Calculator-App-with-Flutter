import 'package:flutter/material.dart';

  int yourAge = 20;
  int yourWeight = 66;
class ShortCards extends StatefulWidget {
  const ShortCards({super.key});

  @override
  State<ShortCards> createState() => _ShortCardsState();
}

class _ShortCardsState extends State<ShortCards> {

  @override
  Widget build(BuildContext context) {
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              height: 170,
              margin: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 4)),
                  const Text(
                    "Age",
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 39, 44),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    "$yourAge",
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child:
                          IconButton(
                            onPressed: () {
                              setState(() {
                                yourAge += 1;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 40,
                              color: Color.fromARGB(255, 36, 39, 44),
                            ),
                          )),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                yourAge -= 1;
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 40,
                              color: Color.fromARGB(255, 36, 39, 44),
                            ),
                          ),
                       
                      
                    ],
                  ),
                ],
              ),
            ),

//////////////////////////////////////////////////
 Container(
          width: 170,
          height: 170,
          margin: const EdgeInsets.only(left: 1, right: 16 , top: 16 , bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 4)),
              const Text(
                "Wieght(KG)",
                style: TextStyle(
                  color: Color.fromARGB(255, 36, 39, 44),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "$yourWeight",
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child:
                      IconButton(
                        onPressed: () {
                          setState(() {
                            yourWeight += 1;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                          color: Color.fromARGB(255, 36, 39, 44),
                        ),
                      )),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            yourWeight -= 1;
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          size: 40,
                          color: Color.fromARGB(255, 36, 39, 44),
                        ),
                      ),
                   
                  
                ],
              ),
            ],
          ),
        )
          ],
        );
  }
}


