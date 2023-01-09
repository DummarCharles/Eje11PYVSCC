// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, annotate_overrides, camel_case_types
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'application/use_cases/frmPrincipal.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primer Cambio',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: frmPrincipal(),
    );
  }
}
