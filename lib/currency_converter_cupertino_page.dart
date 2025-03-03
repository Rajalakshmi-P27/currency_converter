import 'package:flutter/cupertino.dart';

// Type 'stfl' which will auto create your class due to VS code we have installed.

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State createState() =>  _CurrencyConverterCupertinoPageState();
}

class  _CurrencyConverterCupertinoPageState extends State  {
  
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
       
      
        
        return CupertinoPageScaffold(
            
                backgroundColor: CupertinoColors.systemGrey6,
                navigationBar: CupertinoNavigationBar(
                  backgroundColor: CupertinoColors.systemGrey6,
                  middle: Text("Currency Converter"),
                  leading: Icon(CupertinoIcons.money_dollar_circle),
                  trailing: Icon(CupertinoIcons.camera_circle),
                  
                  
                  
                  // centertile:true is used to center the title for both ios and android.
                  // In default its center for ios and left hand side for android.
                  
                  // To display some icons on right side or left side of appbar 
                  // appbar is a widget used to indicate the top of screen -
                  // 1. action is used to display the icons on right side of appbar.(more than 1 icon)
                  // 2. leading is used to display the icons on left side of appbar.(only 1 icon) 
                ),


                child: Center(
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
                            //'INR ${result!=0? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                                     'INR ${result.toStringAsFixed(2)}' ,
                                      style: TextStyle(
                                                fontSize: 30, // Set font size
                                                fontWeight: FontWeight.bold, // Make text bold
                                                color: CupertinoColors.black) // Set text color
                                     
                                      ),
                                    // Creating padding for text field.
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CupertinoTextField(
                                        controller: textEditingController, // passing the controller on textfeild.
                                        style: TextStyle(
                                          color: CupertinoColors.black),
                                          decoration: BoxDecoration(
                                            color: CupertinoColors.white,
                                            border:Border.all(),
                                            borderRadius: BorderRadius.all(Radius.circular(5))                                           
                                          
                                            ),
                                            placeholder: "Enter the amount in USD",
                                            prefix: const Icon(CupertinoIcons.money_dollar),

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
                                       child: CupertinoButton(
                                        
                                        onPressed: convert,
                                          /*setState(() {
                                           result = double.parse(textEditingController.text) *  83; 
                                          }); */// To update the value of result we use setstate. it will allow us to rebuild by taking only the needed data.
                                        
                                        color: CupertinoColors.black,
                                        
                                        
                                        child: Text("Convert",
                                        style: TextStyle(color: CupertinoColors.white)), // Always use child widget atlast. it will not bring any changes since its readable we should put child at end.
                                        ),
                                     ),     
                                        


                                    

                                    
                                    ]
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
