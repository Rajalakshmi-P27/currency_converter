import 'package:flutter/material.dart';


// To create a calculation part of currency converter.
// 1. create a variable(a)
// 2. create a function to perform multilplication (*81)
// 3. store the multiplied value to a variable (a).
// 4. display result on screen.

// stateful widget needs create state which need to call instance of state. But its not possible.
// So we created a separate private class that extend state and then passed that instance of private class to create state.


class CurrencyConverterMaterialTreePage extends StatefulWidget
{
  const CurrencyConverterMaterialTreePage({super.key});

  @override
  State createState() => _CurrencyConverterMaterialTreePageState();
}

class _CurrencyConverterMaterialTreePageState extends State{

  /* For calculation part of currency converter */
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    result = double.parse(textEditingController.text) *  83;
    // To update the value of result we use setstate. 
    // It will allow us to rebuild by taking only the needed data.
    setState(() { });
  }
    
  /* end of calculation part of currency converter */

  @override
  Widget build (BuildContext context)
  {
        
      print("rebuilt");
       
      final border = OutlineInputBorder(
                                            borderSide: BorderSide(
                                            color: const Color.fromARGB(255, 249, 247, 247),
                                            width: 2.0,
                                            style: BorderStyle.solid),
                                            borderRadius: BorderRadius.all(Radius.circular(5)));
        // Scaffold is a material widget.
        // it is a templete for a materialapp contains top and bottom.
         
        
        return MaterialApp(
            home:Scaffold(
                backgroundColor: const Color.fromARGB(255, 224, 226, 228),
                appBar: AppBar(
                  backgroundColor: const Color.fromARGB(255, 138, 206, 240),
                  title: Text("Currency Converter"),
                  centerTitle: true,
                  leading: Icon(Icons.money),
                  actions: [
                    Icon(Icons.monochrome_photos_sharp),
                    Icon(Icons.my_location)
                  ],
                  
                  
                  // centertile:true is used to center the title for both ios and android.
                  // In default its center for ios and left hand side for android.
                  
                  // To display some icons on right side or left side of appbar 
                  // appbar is a widget used to indicate the top of screen -
                  // 1. action is used to display the icons on right side of appbar.(more than 1 icon)
                  // 2. leading is used to display the icons on left side of appbar.(only 1 icon) 
                ),


                body: Center(
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          /* To display the result with 2 digits after decimal point.
                          need to use the method since text widget is of string type convert
                          to string and then fixed to 2 digits after decimal point. 
                          'INR ${result.toStringAsFixed(2)}' */

                          /* To display just as zero before convertion change
                          the code 'INR ${result.toStringAsFixed(2)}' like below 
                          using ternary operator condition? True:False */
                           Text(
                            'INR ${result!=0? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                                     style: const TextStyle(
                                          fontSize: 45,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(6, 7, 7, 1)
                                      )
                                      ),
                                    // Creating padding for text field.
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        controller: textEditingController, // passing the controller on textfeild.
                                        style: TextStyle(
                                          color: Colors.black,),
                                          decoration:InputDecoration(
                                            hintText: "Please enter the amount in USD",
                                            hintStyle: TextStyle(
                                              color: Colors.black),
                                            prefixIcon: Icon(Icons.monetization_on),
                                            prefixIconColor : Colors.black,
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                              color: const Color.fromARGB(255, 249, 248, 248),
                                              width: 2.0,
                                              style: BorderStyle.solid),
                                              borderRadius: BorderRadius.all(Radius.circular(5))
                                              ),
                                              enabledBorder: border,
                                              // To reduce number of lines of code we can use border variable.
                                              // same can apply for focusedBorder also.
                                            ),
                                            keyboardType: const TextInputType.numberWithOptions
                                            (decimal: true),
                                            
                                            
                                      ),
                                    ),
                                          // cmd + k will show the keyborad in stimulator.
                                          // To show number keyboard above line is used.

                                     // Creating the button.
                                     // 3 mode -> debug(buliding and testing the app), 
                                     // release(final disply of production),Only can run in simulator (terminal > flutter run --release)
                                     // profile(both debug and release) same like release (flutter run --profile).

                                     /* onPressed: (){
                                        if(kDebugMode){
                                          
                                        print("Button is clicked");
                                      }, */ /* -> this is for debug mode */

                                    // we have two types of button. 1. raised button, 2. text button. 
                                    // this a text button.
                                    // To make as raised button use ElevatedButton in place of TextButton under padding.
                                    // if we use elevated button there will be lite sadow effect. to see that properly use below one.
                                    // elevation: widgetStateProperty.all(15),

                                     Padding(
                                       padding: const EdgeInsets.all(10.0),
                                       child: TextButton(
                                        onPressed: convert,
                                          /*setState(() {
                                           result = double.parse(textEditingController.text) *  83; 
                                          }); */// To update the value of result we use setstate. it will allow us to rebuild by taking only the needed data.
                                        
                                        
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.black,
                                          minimumSize: const Size(double.infinity, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5))      
                                          
                                          // on below code widgetStateProperty.all is used everytime so to reduce it. above one is used.

                                          /*

                                          foregroundColor: WidgetStateProperty.all(Colors.white),
                                          backgroundColor: WidgetStateProperty.all(Colors.black),
                                          minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5))),

                                          To make the button fix it according to to their screen use double.infinity.
                                          
                                          fixedSize: WidgetStateProperty.all(Size(380, 50)), */
                                        ),
                                        
                                        child: Text("Convert"), // Always use child widget atlast. it will not bring any changes since its readable we should put child at end.
                                        ),
                                     ),     
                                        


                                    

                                    
                                    ]
                    )
                )
            )
        );

    // home:Scaffold(
    //      body:center(
    //          child:Text("HEllo")));

    // hinttext is used so that when user enters the text it will disapear the text we entered.

    // child will have only one widget
    // children will have multiple widgets.
    // children have list of widgets.
    // children have 


    // above code is called widgt tree (materialapp-> scaffold
    // -> center -> text).) or (home(body(child(Text(data that you want)))).
    // material tree always should be small and easy so we can created separate 
    // file for it.        
        
    }



} 



/*
class CurrencyConverterMaterialTreePagee extends StatelessWidget
{
    //creating constructor.
    const CurrencyConverterMaterialTreePage ({super.key});
    
      // get color => null;

    
    // creating build function.
    @override
    Widget build(BuildContext context)
    {
        /* For calculation part of currency converter */
        print("rebuilt");
        double result = 0;
        final TextEditingController textEditingController = TextEditingController();
        /* end of calculation part of currency converter */

      final border = OutlineInputBorder(
                                            borderSide: BorderSide(
                                            color: const Color.fromARGB(255, 249, 247, 247),
                                            width: 2.0,
                                            style: BorderStyle.solid),
                                            borderRadius: BorderRadius.all(Radius.circular(5)));
        // Scaffold is a material widget.
        // it is a templete for a materialapp contains top and bottom.
         
        
        return MaterialApp(
            home:Scaffold(
                backgroundColor: const Color.fromARGB(255, 224, 226, 228),
                appBar: AppBar(
                  backgroundColor: const Color.fromARGB(255, 138, 206, 240),
                  title: Text("Currency Converter"),
                  centerTitle: true,
                  leading: Icon(Icons.money),
                  actions: [
                    Icon(Icons.monochrome_photos_sharp),
                    Icon(Icons.my_location)
                  ],
                  
                  
                  // centertile:true is used to center the title for both ios and android.
                  // In default its center for ios and left hand side for android.
                  
                  // To display some icons on right side or left side of appbar 
                  // appbar is a widget used to indicate the top of screen -
                  // 1. action is used to display the icons on right side of appbar.(more than 1 icon)
                  // 2. leading is used to display the icons on left side of appbar.(only 1 icon) 
                ),


                body: Center(
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                           Text(result.toString(),
                                     style: const TextStyle(
                                          fontSize: 45,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(6, 7, 7, 1)
                                      )
                                      ),
                                    // Creating padding for text field.
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        controller: textEditingController, // passing the controller on textfeild.
                                        style: TextStyle(
                                          color: Colors.black,),
                                          decoration:InputDecoration(
                                            hintText: "Please enter the amount in USD",
                                            hintStyle: TextStyle(
                                              color: Colors.black),
                                            prefixIcon: Icon(Icons.monetization_on),
                                            prefixIconColor : Colors.black,
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                              color: const Color.fromARGB(255, 249, 248, 248),
                                              width: 2.0,
                                              style: BorderStyle.solid),
                                              borderRadius: BorderRadius.all(Radius.circular(5))
                                              ),
                                              enabledBorder: border,
                                              // To reduce number of lines of code we can use border variable.
                                              // same can apply for focusedBorder also.
                                            ),
                                            keyboardType: const TextInputType.numberWithOptions
                                            (decimal: true),
                                            
                                            
                                      ),
                                    ),
                                          // cmd + k will show the keyborad in stimulator.
                                          // To show number keyboard above line is used.

                                     // Creating the button.
                                     // 3 mode -> debug(buliding and testing the app), 
                                     // release(final disply of production),Only can run in simulator (terminal > flutter run --release)
                                     // profile(both debug and release) same like release (flutter run --profile).

                                     /* onPressed: (){
                                        if(kDebugMode){
                                          
                                        print("Button is clicked");
                                      }, */ /* -> this is for debug mode */

                                    // we have two types of button. 1. raised button, 2. text button. 
                                    // this a text button.
                                    // To make as raised button use ElevatedButton in place of TextButton under padding.
                                    // if we use elevated button there will be lite sadow effect. to see that properly use below one.
                                    // elevation: widgetStateProperty.all(15),

                                     Padding(
                                       padding: const EdgeInsets.all(10.0),
                                       child: TextButton(
                                        onPressed: (){
                                          result = double.parse(textEditingController.text) *  81;
                                          //print(result);
                                          build(context);
                                        }, 
                                        
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.black,
                                          minimumSize: const Size(double.infinity, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5))      
                                          
                                          // on below code widgetStateProperty.all is used everytime so to reduce it. above one is used.

                                          /*

                                          foregroundColor: WidgetStateProperty.all(Colors.white),
                                          backgroundColor: WidgetStateProperty.all(Colors.black),
                                          minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5))),

                                          To make the button fix it according to to their screen use double.infinity.
                                          
                                          fixedSize: WidgetStateProperty.all(Size(380, 50)), */
                                        ),
                                        
                                        child: Text("Convert"), // Always use child widget atlast. it will not bring any changes since its readable we should put child at end.
                                        ),
                                     ),     
                                        


                                    

                                    
                                    ]
                    )
                )
            )
        );

    // home:Scaffold(
    //      body:center(
    //          child:Text("HEllo")));

    // hinttext is used so that when user enters the text it will disapear the text we entered.

    // child will have only one widget
    // children will have multiple widgets.
    // children have list of widgets.
    // children have 


    // above code is called widgt tree (materialapp-> scaffold
    // -> center -> text).) or (home(body(child(Text(data that you want)))).
    // material tree always should be small and easy so we can created separate 
    // file for it.        
        
    }



} */