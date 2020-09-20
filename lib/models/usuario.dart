import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Usuarioo{
  String _id;
  String _nombre;
  String _apellido;
  String _email;
  String _password;
  String _telefono;

  Usuarioo(this._id, this._nombre, this._apellido, this._email,this._password,this._telefono);

  Usuarioo.map(dynamic obj){
    this._nombre = obj['nombre'];
    this._apellido = obj['apellido'];
    this._email = obj['email'];
    this._password = obj['password'];
    this._telefono = obj['telefono'];
  }
  String get id => _id;
  String get nombre => _nombre;
  String get apellido => _apellido;
  String get email => _email;
  String get password => _password;
  String get telefono => _telefono;

 Usuarioo.fromSnaphop(DataSnapshot snapshot){
   _id = snapshot.key;
   _nombre = snapshot.value['nombre'];
   _apellido = snapshot.value['apellido'];
   _email = snapshot.value['email'];
   _password = snapshot.value['password'];
   _telefono = snapshot.value['telefono'];
 }




}