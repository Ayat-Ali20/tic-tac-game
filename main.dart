import 'package:flutter/material.dart';
import 'package:tic_tac/screens/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe ',
      theme: ThemeData(
        //primaryColor: ,
        canvasColor:const Color(0xff3d2a9c) ,
        textTheme: const TextTheme(
          headline1: TextStyle( fontSize: 30,color: Color(0xffffffff), fontWeight: FontWeight.bold,  height: 2),
          headline5: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, fontFamily: 'Hacan',color: Colors.white),
          headline6: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, fontFamily: 'Hacan',color: Colors.white , height: 2),
          bodyText1: TextStyle(color: Color(0xffffffff))
         // bodyText2: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold, height: 2),
        ),
        //primarySwatch: ,
      ),
      home: const FirstPage(),
    );
  }
}


