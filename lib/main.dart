
// used import to make use of class from another file.
import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_tree_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  // runapp() is a function used to run a app or widget.
  // runapp() takes a parameter. So we have passed MyApp() class.
  // const is declared it so that it can't be chaged. (will give compile time output).

  runApp(const MyMaterialApp()); // put the instance of class whatever you want to run.
}

// Stateless widget.

// class MyApp extends Stateless widget(abstract class).
class MyMaterialApp extends StatelessWidget
{
  // creating constructor.  
  // const MyApp({Key? key}):super(key:key);
  const MyMaterialApp({super.key});

  // Abstarct class (stateless widget) has a build function so we overide it.

  @override
  Widget build(BuildContext context)
  {
    // returns text function or text widget.
    //return const Text("Hello World 1",textDirection:TextDirection.ltr);    
    // return material app widget.
    // without scaffold text looks bad way.
    return MaterialApp(
      home: CurrencyConverterMaterialTreePage());
    // calling the function from another file.
    
  }

  
  }

  class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterCupertinoPage());
  }
}


