// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../infrastructure/controllers/conexion.dart';

class frmManTipoUsuario extends StatefulWidget {
  State<frmManTipoUsuario> createState() => _frmManTipoUsuario();
}

final txtnomTU = TextEditingController();

class _frmManTipoUsuario extends State<frmManTipoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantenimiento tipo usuarios cambio 2'),
      ),
      body: Column(children: [
        TextField(
          controller: txtnomTU,
        ),
        ElevatedButton(
            onPressed: () async {
              await addDato(txtnomTU.text);
            },
            child: Text('Guardar')),
      ]),
    );
  }
}
