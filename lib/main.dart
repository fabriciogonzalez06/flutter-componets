import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       localizationsDelegates: [
   // ... app-specific localization delegate[s] here
   GlobalMaterialLocalizations.delegate,
   GlobalWidgetsLocalizations.delegate,
   GlobalCupertinoLocalizations.delegate],
    supportedLocales: [
    const Locale('en'), // English
    const Locale('es'), // Hebrew
    const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
    // ... other locales the app supports
  ],
      title: 'Componentes APP',
     // home: new HomePage()
     initialRoute: '/',
     routes: getApplicationRoutes(),
     onGenerateRoute: ( RouteSettings settings){
       return MaterialPageRoute(
         builder: (BuildContext context)=>AlertPage()
       );
     },
    );
  }
}