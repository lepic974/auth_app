import 'package:auth_app/screens/Guest.dart';
import 'package:auth_app/services/UserService.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserService _userService = UserService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'home page'.toUpperCase(),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  await _userService.logout();

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GuestScreen(),
                    ),
                    (route) => false,
                  );
                },
                //=> print('Vous êtes connecté !!!'
                child: Text(
                  'logout'.toUpperCase(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
