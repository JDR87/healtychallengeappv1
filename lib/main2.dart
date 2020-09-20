import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/map.dart';
import 'screens/menu.dart';
import 'screens/politics.dart';
import 'screens/home.dart';
import 'screens/register.dart';
import 'screens/report.dart';
import 'screens/stadistics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puntos Inseguros',

      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id:(context)=> MyHomePage(),
        RegisterPage.id:(context)=> RegisterPage(),
        PoliticsPage.id:(context)=> PoliticsPage(),
        MenuPage.id:(context)=> MenuPage(),
        MapPage.id:(context)=> MapPage(),
        ReportPage.id:(context)=> ReportPage(),
        StadisticsPage.id:(context)=> StadisticsPage(),
      },
    );


  }


}
