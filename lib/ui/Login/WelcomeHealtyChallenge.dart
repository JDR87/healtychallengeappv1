import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:healtychallengeapp/components/rounded_button.dart';
import 'LogiinHealtyChallenge.dart';
import 'RegistrationHealtyChallenge.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeHealtyChallenge extends StatefulWidget {

  static const String id = 'welcome_healtychallenge';
  @override
  _WelcomeHealtyChallengeState createState() => _WelcomeHealtyChallengeState();
}

class _WelcomeHealtyChallengeState extends State<WelcomeHealtyChallenge>with SingleTickerProviderStateMixin{
//variable de tipo animation
  AnimationController controller;
 Animation animation;
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.red,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: TypewriterAnimatedTextKit(
                text:['Healty Challenge'],
                textStyle: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Column(  children:<Widget>[
              Hero(
                tag:'intro1',
                child: Container(
                  child: Image.asset('assets/img/intro1.jpg'),
                  //  height: animation.value*100,
                  height:60.0,
                ),
              ),
            ],
            ),

            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Login',
              colour: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context, LoginHealtyChallenge.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context, RegistrationHealtyChallenge.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}


