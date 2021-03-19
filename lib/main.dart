import 'package:flutter/material.dart';
import 'screens/guest/Auth.dart';
import 'screens/guest/Term.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TermScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
