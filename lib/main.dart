import 'package:flutter/material.dart';
import 'package:uidesign/screens/splash.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(  const MaterialApp(
    home: SplashScrren(),
    debugShowCheckedModeBanner: false,
  ));
}



