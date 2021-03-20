import 'package:flutter/material.dart';

class HommeScreen extends StatefulWidget {
  @override
  _HommeScreenState createState() => _HommeScreenState();
}

class _HommeScreenState extends State<HommeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'home page',
          ),
        ),
      ),
    );
  }
}
