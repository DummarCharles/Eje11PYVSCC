// ignore_for_file: file_names, use_key_in_widget_constructors, annotate_overrides, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../infrastructure/controllers/conexion.dart';
import 'frmManTipoUsuarios.dart';

class frmPrincipal extends StatefulWidget {
  State<frmPrincipal> createState() => _frmPrincipal();
}

class _frmPrincipal extends State<frmPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: FutureBuilder(
        future: getLista(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: ((context, index) {
                return Text(snapshot.data?[index]['nombre']);
              }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => frmManTipoUsuario()));
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
