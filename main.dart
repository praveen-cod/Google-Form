import 'package:flutter/material.dart';
import 'package:google_form/finalsubmit.dart';
import 'package:google_form/gform.dart';
void main(){
runApp(Main());
}
class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context)=>Gform(),
      "/final":(context)=>Submit(),
    },
   );
  }
}