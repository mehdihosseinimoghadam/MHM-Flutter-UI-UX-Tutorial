import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            neu_lottie_button('https://assets3.lottiefiles.com/private_files/lf30_gc1mnufr.json', 40),
            SizedBox(height: 30,),
            neu_lottie_button('https://assets3.lottiefiles.com/private_files/lf30_gc1mnufr.json', 150),
          ],
        ),
      ),
    ),
  ));
}


Widget neu_lottie_button(path, double r){
  return Container(
    height: 250,
    width: 250,
    child: Lottie.network(path),
    decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(r)),
        boxShadow: [
          BoxShadow(
              color: (Colors.grey[500])!,
              offset: Offset(-4,-4),
              blurRadius: 15,
              spreadRadius: 1
          ),

          BoxShadow(
              color: (Colors.white)!,
              offset: Offset(4,4),
              blurRadius: 15,
              spreadRadius: 1
          )

        ]

    ),
  );
}

