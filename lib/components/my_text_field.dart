import 'package:flutter/material.dart';



class MyField extends StatefulWidget {
  final String label;
  final Icon icon;


  const MyField(this.label, this.icon,
      {Key? key})
      : super(key: key);

  @override
  State<MyField> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: widget.icon,
        labelText: widget.label,
      ),
    );
  }
}
