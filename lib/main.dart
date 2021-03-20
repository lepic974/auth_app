import 'package:auth_app/screens/dashboard/home.dart';
import 'package:auth_app/services/UserService.dart';
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
  UserService _userService = UserService();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      home: StreamBuilder(
        stream: _userService.user,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return HommeScreen();
            }

            return GuestScreen();
          }
          //print(snapshot.connectionState);

          return SafeArea(
              child: Scaffold(
            body: Center(
              child: Text('Loading...'),
            ),
          ));
        },
      ),
    );
  }
}
