
import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/contador_page.dart';
import 'package:flutter_vscode/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,  //saca el banner rojo molesto de arriba
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      )
      
      ,
    );
  }

}