import 'package:flutter/material.dart';
import 'package:todo/ui/home/main_screen.dart';
import 'package:todo/ui/my_theme.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute:HomeScreen.id,
     routes: {
       HomeScreen.id:(context)=> HomeScreen(),
     },
     theme: MyThemeData.lightTheme,
   );
  }

}

