// ignore_for_file: camel_case_types, avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eje0802/domain/entities/tipo_usuario.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getLista() async {
  //Letura de datos
  List pe = [];
  CollectionReference collectionReference = db.collection('tipo_usuarios');
  QuerySnapshot querySnapshot = await collectionReference.get();
  querySnapshot.docs.forEach((element) {
    pe.add(element.data());
  });
  Future.delayed(const Duration(seconds: 5));
  return pe;
}
 
Future<void> addDato(String nombre) async {
  await db.collection('tipo_usuarios').add({'nombre': nombre});
}

class conexion {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Future<List> select(String tabla) async {
    List pe = [];
    CollectionReference collectionReference = db.collection(tabla);
    QuerySnapshot querySnapshot = await collectionReference.get();
    querySnapshot.docs.forEach((element) {
      pe.add(element.data());
    });
    Future.delayed(const Duration(seconds: 5));
    return pe;
  }
  Future<void> addDato(String tabla, tipo_usuario dato) async {
    await db.collection(tabla).add({'nombre': dato.Nombre});
  }
}
