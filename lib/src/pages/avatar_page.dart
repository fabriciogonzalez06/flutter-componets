import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{

  static final pageName='avatar';

 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: Text('Avatar Page'),
       actions: <Widget>[
         Container(
           margin: EdgeInsets.only(right:5.0),
           child: CircleAvatar(
             child: Text('F'),
             backgroundColor: Colors.brown,
             foregroundColor: Colors.white,
           ),
         ),
         Container(
           
           padding: EdgeInsets.all(5.0),
           child: CircleAvatar(
             backgroundImage: NetworkImage('https://datosdefamosos.com/wp-content/uploads/2019/09/Stan_Lee-773x1024.jpg'),
            radius: 25.0,
           ),
         )
       ],
     ),
     body: Center(
       child: Container(
         padding: EdgeInsets.all(10.0) ,
         child: FadeInImage(
           image: NetworkImage('https://datosdefamosos.com/wp-content/uploads/2019/09/Stan_Lee-773x1024.jpg'),
           placeholder: AssetImage('original.gif'),
         ),
       ),
     ),
   );
 }

}