import 'package:flutter/material.dart';
import 'tela.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.yellow,
         visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
       home: Page1(),
     );
  }
}

