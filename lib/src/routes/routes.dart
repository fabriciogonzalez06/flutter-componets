import 'package:componentes/src/pages/listview_page.dart';
import 'package:flutter/material.dart';


import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';


Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
       '/':(BuildContext context )=>  new HomePage(),
       'alert':(BuildContext context)=>new  AlertPage(),
       AvatarPage.pageName:(BuildContext context )=>new AvatarPage(),
       'card':(BuildContext context)=> new CardPage(),
       'animatedContainer':(BuildContext context)=> new AnimatedContainerPage(),
       'inputs':(BuildContext context)=>new InputPage(),
       'slider':(BuildContext context)=> new SliderPage(),
       'list':(BuildContext context) => new ListViewPage()
 };
}

