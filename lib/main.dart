  import 'package:flutter/material.dart';
import 'package:healtychallengeapp/home.dart';
  import 'package:healtychallengeapp/ui/Login/ChatHealtyChallenge.dart';
  import 'package:healtychallengeapp/ui/Login/login.dart';
  import 'package:healtychallengeapp/ui/Login/registration.dart';
  import 'package:healtychallengeapp/ui/Login/welcome.dart';
import 'package:healtychallengeapp/ui/routine/listview_routine.dart';
import 'package:healtychallengeapp/ui/routine/routine_information.dart';

  void main() => runApp(HealtyChallengeApp());

  class HealtyChallengeApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: Welcome.id,
        routes: {
                Welcome.id: (context) => Welcome(),
          Login.id: (context) => Login(),
          Registration.id: (context) => Registration(),
          ChatHealtyChallenge.id:(context)=>ChatHealtyChallenge(),
          Home.id:(context)=>Home(),
          ListViewRoutine.id:(context)=>ListViewRoutine(),

        },
      );
    }
  }
