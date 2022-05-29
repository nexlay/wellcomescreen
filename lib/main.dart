import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/authenticate_screens/authentication_state.dart';


void main() => runApp(const Authentication());

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoSerifTextTheme(Theme.of(context).textTheme,),
          primarySwatch: Colors.orange,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange.shade50),
            borderRadius: BorderRadius.circular(38.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange.shade50),
            borderRadius: BorderRadius.circular(38.0),
          ),
          filled: true,
          labelStyle: TextStyle(color: Colors.orange, fontSize: 14.0),
          fillColor: Colors.orange.shade50,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.orange,
            primary: Colors.white,
            side: BorderSide(color: Colors.orange.shade50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(38.0),
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24.0),
              ),
            ),
          ),
        )
      ),
      home: AuthenticationState(),
    );
  }
}
