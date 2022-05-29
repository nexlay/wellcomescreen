import 'package:flutter/material.dart';
import 'package:projects/authenticate_screens/login_screen.dart';
import 'package:projects/authenticate_screens/registration_screen.dart';

class AuthenticationState extends StatefulWidget {

  const AuthenticationState( {Key? key})
      : super(key: key);

  @override
  State<AuthenticationState> createState() => _AuthenticationStateState();
}

class _AuthenticationStateState extends State<AuthenticationState> {

  bool loginOrRegistration = true;

  void showScreen() {
    setState(() {
      loginOrRegistration = !loginOrRegistration;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (loginOrRegistration) {
      return LoginCard(showScreen);
    } else
      return RegistrationCard(showScreen);
  }
}
