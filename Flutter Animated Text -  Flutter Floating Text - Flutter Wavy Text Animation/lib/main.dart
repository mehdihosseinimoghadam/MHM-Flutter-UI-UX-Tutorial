import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            newContainer1(50),
            SizedBox(height: 20,),
            newContainer2(50),
          ],
        ),
      ),
    );
  }
}




Widget newContainer1(double r){
  return Container(
    height: 250,
    width: 250,

    child: Center(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Hello World'),
            WavyAnimatedText('Make It Happen'),
          ],
          isRepeatingAnimation: true,
        ),
      ),
    ),


    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.all(Radius.circular(r)),
      boxShadow: [
        BoxShadow(
        color: (Colors.grey[500])!,
        offset: Offset(-4, -4),
        blurRadius: 15,
        spreadRadius: 1
      ),
        BoxShadow(
            color: (Colors.white)!,
            offset: Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1
        ),

    ]),
  );
}







Widget newContainer2(double r){
  return Container(
    height: 250,
    width: 250,

    child: Center(
      child: DefaultTextStyle(
        style: const TextStyle(
            fontSize: 50,
            color: Colors.black
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            ScaleAnimatedText('Make'),
            ScaleAnimatedText('It'),
            ScaleAnimatedText('Happen')
          ],
        ),
      ),
    ),


    decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(r)),
        boxShadow: [
          BoxShadow(
              color: (Colors.grey[500])!,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1
          ),
          BoxShadow(
              color: (Colors.white)!,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1
          ),

        ]),
  );
}









