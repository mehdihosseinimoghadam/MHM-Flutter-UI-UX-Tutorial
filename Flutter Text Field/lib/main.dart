import 'package:flutter/material.dart';
import 'myInput.dart';


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
  final start = TextEditingController();
  final end = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Field', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),), backgroundColor: Colors.grey[500],),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              myInput(controler: start, hint: 'Starting'),
              SizedBox(height: 15,),
              myInput(controler: end, hint: 'Ending'),
              SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[500]),
                  onPressed: (){
                    setState(() {
                      print(start.text);
                      print(end.text);
                    });
                  },
                  child: Text('Press to Print'))
            ],
          ),
        ),
      ),


    );
  }
}
