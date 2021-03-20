import 'package:auth_app/models/UserModel.dart';
import 'package:auth_app/screens/dashboard/home.dart';
import 'package:auth_app/screens/guest/Auth.dart';
import 'package:auth_app/screens/guest/Password.dart';
import 'package:auth_app/screens/guest/Term.dart';
import 'package:auth_app/services/UserService.dart';
import 'package:flutter/material.dart';

class GuestScreen extends StatefulWidget {
  GuestScreen({Key key}) : super(key: key);

  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  UserService _userService = UserService();

  List<Widget> _widgets = [];
  int _indexSelected = 0;

  String _email;

  @override
  void initState() {
    super.initState();

    _widgets.addAll([
      AuthScreen(
        onChangedStep: (index, value) => setState(() {
          _indexSelected = index;
          _email = value;
        }),
      ),
      TermScreen(
        onChangedStep: (index) => setState(() => _indexSelected = index),
      ),
      PasswordScreen(
        onChangedStep: (index, value) => setState(() {
          if (index != null) {
            _indexSelected = index;
          }
          if (value != null) {
            _userService
                .auth(
              UserModel(
                email: _email,
                password: value,
              ),
            )
                .then(
              (value) {
                if (value.uid != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HommeScreen(),
                    ),
                  );
                }
              },
            );

            //print(userModel.toJson());
          }
        }),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexSelected),
    );
  }
}
