import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/screens/splash.dart';


Future<void> main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MaterialApp(

    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}

