import 'package:flutter/material.dart';
import 'package:todo/ui/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute:HomeScreen.id,
     routes: {
       HomeScreen.id:(context)=>const HomeScreen(),
     },
   );
  }

}

