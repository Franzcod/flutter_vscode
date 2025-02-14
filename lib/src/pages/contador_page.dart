import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState()=> _ContadorPageState();
  
} 


class _ContadorPageState extends State<ContadorPage>{ //el guion bajo la hace privada
  
  final _estiloTexto=new TextStyle(fontSize: 25);

  int _conteo =0;

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
            Text('Numero de clicks: ', style: _estiloTexto),
            Text('$_conteo',style:_estiloTexto),
          ]
        ) 
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //mover float botton
        floatingActionButton: _crearBotones()
        
    );
  }
    //poner vsrios botones abajo
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset,),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer,),
        SizedBox(width: 20.0),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar,),

      ],
    );
  }

  void _agregar(){
    setState(() => _conteo++);
  }

  void _sustraer(){
    setState(() => _conteo--);
  }

  void _reset(){
    setState(() => _conteo=0);
  }


}