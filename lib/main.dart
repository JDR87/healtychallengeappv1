import 'package:flutter/material.dart';
import 'package:healtychallengeapp/ui/Login/login.dart';
import 'package:healtychallengeapp/ui/Login/registration.dart';
import 'package:healtychallengeapp/ui/Login/welcome.dart';

void main()=>runApp(HealtyChallengeApp());

class HealtyChallengeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: Welcome.id ,
      routes: {
        Welcome.id: (context) =>Welcome(),
        Login.id: (context) => Login(),
        Registration.id: (context)=>Registration(),

      },
    );
  }
}
