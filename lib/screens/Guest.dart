import 'package:auth_app/models/UserModel.dart';
import 'package:auth_app/screens/dashboard/Home.dart';
import 'package:auth_app/screens/guest/Auth.dart';
import 'package:auth_app/screens/guest/Password.dart';
import 'package:auth_app/screens/guest/Term.dart';
import 'package:auth_app/services/CommonService.dart';
import 'package:auth_app/services/UserService.dart';
import 'package:flutter/material.dart';

class GuestScreen extends StatefulWidget {
  GuestScreen({Key key}) : super(key: key);

  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  UserService _userService = UserService();
  CommonService _commonService = CommonService();

  List<Widget> _widgets = [];
  int _indexSelected = 0;

  String _email;

  @override
  void initState() {
    super.initState();

    AuthScreen authScreen = AuthScreen(onChangedStep: (index, value) async {
      StateRegistration stateRegistration =
          await _userService.mailinglist(value);

      setState(() {
        _indexSelected = index;
        _email = value;

        if (stateRegistration == StateRegistration.COMPLETE) {
          _indexSelected = _widgets.length - 1;
        }
      });
    });

    PasswordScreen passwordScreen = PasswordScreen(
      onChangedStep: (index, value) async {
        UserModel connectedUserModel = await _userService.auth(
          UserModel(
            email: _email,
            password: value,
          ),
        );

        setState(() {
          if (index != null) {
            _indexSelected = index;
          }

          if (connectedUserModel != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }
        });
      },
    );

    _commonService.terms.then(
      (terms) => setState(
        () => _widgets.addAll(
          <Widget>[
            authScreen,
            TermScreen(
              terms: terms,
              onChangedStep: (index) => setState(() => _indexSelected = index),
            ),
            passwordScreen,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.length == 0
          ? SafeArea(
              child: Scaffold(
                body: Center(
                  child: Text('Loading in progress...'),
                ),
              ),
            )
          : _widgets.elementAt(_indexSelected),
    );
  }
}
