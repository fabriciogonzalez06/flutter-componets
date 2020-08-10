import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget{

  @override
  _SliderPageState createState()=> new  _SliderPageState();

}


class _SliderPageState extends State<SliderPage> {

  double _valorSlider=100.0;
  bool _bloquearCheck=false;
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Slider Page'),
        ),
        body: Container(
          padding: EdgeInsets.only(top:50.0),
          child:Column(
            children: <Widget>[
              _crearSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen()
              )
            ],
          )
        ),
      );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño imagen',
      //divisions: 20,
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
          this._valorSlider =valor;
        });
      },
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
    );
  }

  Widget _checkBox(){
    /*
    return Checkbox(
      onChanged: (value){
        setState(() {
          
        _bloquearCheck=value;
        });
      },
      value:_bloquearCheck ,
    );
    */
    return CheckboxListTile(
       title: Text('Bloquear slider'),
       onChanged: (value){
        setState(() {
          
        _bloquearCheck=value;
        });
      },
      value:_bloquearCheck ,
    );

  }

  Widget _crearImagen(){
    return FadeInImage(
      image: NetworkImage('https://eloutput.com/app/uploads-eloutput.com/2020/04/Batman.jpg'),
      placeholder: AssetImage('assets/original.gif'),
      width: _valorSlider,
      fit:BoxFit.contain//para que la imagen no se salga de sus margenes
    );
  }

  Widget _crearSwitch(){
      return SwitchListTile(
       title: Text('Bloquear slider'),
       onChanged: (value){
        setState(() {
          
        _bloquearCheck=value;
        });
      },
      value:_bloquearCheck ,
    );
  }

}