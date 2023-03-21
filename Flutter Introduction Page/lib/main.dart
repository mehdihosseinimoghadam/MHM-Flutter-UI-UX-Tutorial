import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:introduction_screen/introduction_screen.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
     body: SafeArea(
       child:
       Center(
         child:IntroductionScreen(
           showNextButton: false,
           done: const Text("Done"),
           onDone: () {// On button pressed
           },
           pages: [
             PageViewModel(
               // decoration: PageDecoration(boxDecoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomLeft, end:  Alignment.topRight, colors: [Colors.grey.withOpacity(.5), Colors.grey.withOpacity(.1)]))),
               title: "Best Ingredients",
               body: "Our Promise is to Use Fresh, Health and the Best Picked Ingredients ",
               image:  Center(
                 child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_p1bmwqtk.json'),
               ),
             ),

             PageViewModel(
               title: "Chef",
               body: "We Gathered the Best Chefs From Around the World to Make Sure That We Deliver The best Food to Our Customers",
               image:  Center(
                 child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_jBvjF3.json'),
               ),
             ),

             PageViewModel(
               title: "Delivery",
               body: "No Matter How Far You Are, We Deliver it in a Matter of Second",
               image:  Center(
                 child: Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_ewzbzcaw.json'),
               ),
             ),

             PageViewModel(
               title: "Enjoy",
               body: "Enjoy the Pizza, With the Best Ingredients, Cooked by the Best Chefs in the World",
               image:  Center(
                 child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_rXwz8k6MJO.json'),
               ),
             ),

           ],
         )
       ),
     ),
    ),
  ));

}