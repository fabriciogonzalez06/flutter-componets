import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget{


 @override
  _AnimatedContainerPage createState()=>_AnimatedContainerPage();

}


class _AnimatedContainerPage extends State<AnimatedContainerPage> {
 

 double _width=50.0;
 double _heigth=50.0;
 Color _color = Colors.pink;
 BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
            width: _width,
            height: _heigth,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
            duration: Duration(milliseconds: 800),
            curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  this._cambiarTamanio,
        child: Icon(Icons.fast_forward),
        tooltip: 'Siguiente',
      ) ,
    );

  }

  void _cambiarTamanio(){

    final random= Random();

    setState(() {
      
    this._heigth = random.nextInt(300).toDouble();
    this._width =random.nextInt(300).toDouble();
    this._color= Color.fromRGBO(random.nextInt(255)
    , random.nextInt(255)
    , random.nextInt(255)
    , 1);
    });

    _borderRadius= BorderRadius.circular(random.nextInt(100).toDouble());
  }
}