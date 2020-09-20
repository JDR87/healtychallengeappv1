import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:healtychallengeapp/ui/viewsusuarios/register_instructor.dart';
import 'package:healtychallengeapp/ui/viewsusuarios/instructor_information.dart';
import 'package:healtychallengeapp/models/instructor.dart';

class ListViewInstructors extends StatefulWidget {
  static String id='lista_instructores';
  @override
  _ListViewInstructorsState createState() => _ListViewInstructorsState();
}

final usuarioReference = FirebaseDatabase.instance.reference().child('usuario');

class _ListViewInstructorsState extends State<ListViewInstructors> {
  List<Instructor> itemsUsuario;
  StreamSubscription<Event> _onUsuarioAddedSubcription;
  StreamSubscription<Event> _onUsuarioChangedSubcription;

  @override
  void initState() {
    super.initState();
    itemsUsuario = new List();
    _onUsuarioAddedSubcription =
        usuarioReference.onChildAdded.listen(_onUsuarioAdded);
    _onUsuarioChangedSubcription =
        usuarioReference.onChildChanged.listen(_onUsuarioUpdate);
  }

  @override
  void dispose() {
    super.dispose();
    _onUsuarioAddedSubcription.cancel();
    _onUsuarioChangedSubcription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Usuarios',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Informacion de Usuario'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: itemsUsuario.length,
            padding: EdgeInsets.only(top: 12.0),
            itemBuilder: (context, position) {
              return Column(
                children: <Widget>[
                  Divider(
                    height: 7.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                            title: Text(
                              '${itemsUsuario[position].nombre}',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15.0,
                              ),
                            ),
                            subtitle: Text(
                              '${itemsUsuario[position].apellido}',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15.0,
                              ),
                            ),
                            leading: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 17.0,
                                  child: Text(
                                    '${[position + 1]}',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () => _navigationToUsuarioInformation(
                                context, itemsUsuario[position])),
                      ),
                      IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => _deleteUsuario(
                              context, itemsUsuario[position], position)),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () => _navigateToUsuario(
                              context, itemsUsuario[position])),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          backgroundColor: Colors.green,
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }

  void _onUsuarioAdded(Event event) {
    setState(() {
      itemsUsuario.add(new Instructor.fromSnaphop(event.snapshot));
    });
  }

  void _onUsuarioUpdate(Event event) {
    var oldUsuarioValue = itemsUsuario.singleWhere((usuario) => usuario.id == event.snapshot.key);
    setState(() {
      itemsUsuario[itemsUsuario.indexOf(oldUsuarioValue)] = new Instructor.fromSnaphop(event.snapshot);
    });
  }

  void _deleteUsuario(
      BuildContext context, Instructor usuario, int position) async {
    await usuarioReference.child(usuario.id).remove().then((_) {
      setState(() {
        itemsUsuario.removeAt(position);
        //Navigator.of(context).pop();
      });
    });
  }


  void _navigationToUsuarioInformation(
      BuildContext context, Instructor usuario) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterInstructor(usuario)),
    );
  }

  void _navigateToUsuario(BuildContext context, Instructor usuario) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UsuarioInformation(usuario)),
    );
  }

  void _createNewUsuario(BuildContext context) async {
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => RegisterInstructor(Instructor(null,'','','','',''))),
    );
  }

}
