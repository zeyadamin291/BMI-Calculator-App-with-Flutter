import 'package:flutter/material.dart';
import 'package:flutter_application_3/long_cards.dart';
import 'package:flutter_application_3/short_cards.dart';

void main() {
  runApp(const BMI_App());
}

class BMI_App extends StatelessWidget {
  const BMI_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calc',
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Color(0xff31363F) ,
        appBar: AppBar(
          backgroundColor: Color(0xff31363F),
          centerTitle: true,
          title: const Text(
            "BMI APP",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: 
        const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShortCards(),
            LongCard(),
          ],
        )
      ),
      ))
      ;
  }
}
