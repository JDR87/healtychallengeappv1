import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:healtychallengeapp/models/routine.dart';

class RoutineInformation extends StatefulWidget {
  static String id = 'routine_information';
  final Routine routine;
  RoutineInformation(this.routine);
  @override
  _RoutineInformationState createState() => _RoutineInformationState();
}

final routineReference = FirebaseDatabase.instance.reference().child('routine');

class _RoutineInformationState extends State<RoutineInformation> {
  List<Routine> itemsRoutine;

  // String productImage;//nuevo

  @override
  void initState() {
    super.initState();

    ///  productImage = widget.product.productImage;//nuevo
    //  print(productImage);//nuevo
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion de Rutina'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.orangeAccent, Colors.greenAccent])),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ACTIVIDAD',
                  style: TextStyle(fontSize: 22.0),
                ),
                Divider(),
                Text(
                  "${widget.routine.nameactivity}",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DESCRIPCION',
                  style: TextStyle(fontSize: 22.0),
                ),
                Divider(),
                Text(
                  "${widget.routine.description}",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NIVEL',
                  style: TextStyle(fontSize: 22.0),
                ),
                Divider(),
                Text(
                  "${widget.routine.level}",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DESAFIO',
                  style: TextStyle(fontSize: 22.0),
                ),
                Divider(),
                Text(
                  "${widget.routine.challenge}",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'RETOS PENDIENTES',
                  style: TextStyle(fontSize: 22.0),
                ),
                Divider(),
                Text(
                  "${widget.routine.nameactivity}",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PARTE A EJERCITAR',
                  style: TextStyle(fontSize: 22.0),
                ),
                Divider(),
                Text(
                  "${widget.routine.bodypart}",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
