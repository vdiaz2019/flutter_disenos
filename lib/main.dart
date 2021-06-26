import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.dark );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': ( BuildContext context ) => BasicDesignScreen(),
        'scroll_screen': ( BuildContext context ) => ScrollScreen(),
        'home_screen': ( BuildContext context ) => HomeScreen()
      },
    );
  }
}