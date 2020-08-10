import 'dart:async';

import 'package:flutter/material.dart';




class ListViewPage extends StatefulWidget{
  @override
  _ListViewPageState createState()=>_ListViewPageState();
}


class _ListViewPageState extends State<ListViewPage>{

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros= new List();
  int _ultimoItem=0;
  bool isLoading=false ;

  @override
  void initState() { 
    super.initState();
    _agregar10();

   @override
   void dispose(){
     super.dispose();
     _scrollController.dispose();
   }

    //add listener
    _scrollController.addListener((){
      if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent ){
        //_agregar10();
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('List view')
        ),
        body:Stack(
          children: <Widget>[
          _crearLista(),
          _crearLoading()
          ],
        ) 
    );
  }


  Widget _crearLista(){
    //el refreshIndicator necesita un elemento con scroll como lo es el listView builder
    return RefreshIndicator(
        onRefresh: obtenerPagina1,
        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context,int index){
          final imagen =_listaNumeros[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?image=${imagen}'),
            placeholder: AssetImage('assets/original.gif'),
          );
        }
      ),
    );
  }
 
  Future<Null> obtenerPagina1() async {
      final duration= new Duration(seconds: 2);

      new Timer(duration,(){
        _listaNumeros.clear();
        _ultimoItem++;
        _agregar10();
      });

      return Future.delayed(duration);
  }
   
  void _agregar10(){
    for(var i=1;i<10;i++){
      this._ultimoItem++;

      _listaNumeros.add(_ultimoItem);
      setState(() {
        
      });

    }
  }

  Future _fetchData() async{
     isLoading=true;
    setState(() {});
    final duration= new Duration(seconds:2);
    return new Timer(duration, respuestaHttp);
  }

  void respuestaHttp(){
      isLoading=false;
      _scrollController.animateTo(
        this._scrollController.position.pixels + 100 , 
        duration: Duration(microseconds: 250), 
        curve: Curves.fastOutSlowIn
        );
      _agregar10();
  }
   
   Widget _crearLoading(){
     if(isLoading){
       return Column(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
             CircularProgressIndicator()

             ],
           ),
           SizedBox(height: 15.0)
         ],
       );
       
     }else{
       return Container();
     }
   }

}