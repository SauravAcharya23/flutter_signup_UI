import 'package:flutter/material.dart';
import 'package:signup_ui/screens/signup_screen.dart';
import 'package:signup_ui/widgets/text_button.dart';

class StartingView extends StatelessWidget {
  const StartingView({super.key});
  
  @override
  Widget build(BuildContext context) {
    double height, width;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 350,
                    decoration:BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(90.0),bottomRight: Radius.circular(90.0))
                    ),
                  )
                ],
              ),
              Positioned(
                top: height*.5 - (width * .2),
                left: width * .4,
                child: ClipOval(
                  child: Image.asset('assets/logo/leaf.jpg', height: 110,),
                ),
              ),
              const SizedBox(height: 400,),
            ],
          ),
          const SizedBox(height: 80,),
          const Text('Leafgradle', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,letterSpacing: 2.0),),
          const SizedBox(height: 20,),
          const Text('A platform built for a new way of working', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, wordSpacing: 2.0),),
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75.0),
            child:InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
              }),
              child: textButton(textValue:'Get Started for Free')
            )
          )
        ],
      ),
    );
  }
}

