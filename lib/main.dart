import 'package:flutter/material.dart';

import 'package:auth_app/screens/Guest.dart';
//import 'screens/guest/Auth.dart';
//import 'screens/guest/Term.dart';
//import 'screens/guest/Password.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      home: GuestScreen(),
    );
  }
}
