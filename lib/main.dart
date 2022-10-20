import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/screens/splash.dart';


Future<void> main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MaterialApp(

    home: SplashScrren(),
    debugShowCheckedModeBanner: false,
  ));
}
//device token = fZ2OJ1r3R6Gl0hkfeZcIR7:APA91bGOGwPp6b2u_BrpDosEF-_VH_UtwRpmHEJ5IswlzW92DvcH9FRIzZ1b5aAC4ClylbE0b4VOGKySJrf9xvKvoBLxi_eN2Grf9KGOYxT3dV5QLNYHCEwHk9ahgub-d1QdIDUaRKLN


