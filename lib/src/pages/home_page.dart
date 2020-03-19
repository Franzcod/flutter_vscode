import 'package:flutter/material.dart';



class HomePage extends StatelessWidget{

  final estiloTexto=new TextStyle(fontSize: 25);

  final conteo =10;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar( //barra superior
        title: Text('Titulo'),
        centerTitle: true,  //centrar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text('Numero de clicks: ', style: estiloTexto),
            Text('$conteo',style:estiloTexto),
          ]
        ) 
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //mover float botton
        floatingActionButton: FloatingActionButton(

          child: Icon(Icons.add_circle),

          onPressed: (){
            

          },
        ),
        
    );
  }



}