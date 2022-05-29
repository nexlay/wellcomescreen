import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyButton extends StatelessWidget {
  final String label;
  final int typeOfButton;
  final Function showScreen;
  final double width;
  final double height;
  final FontWeight fontWeight;
  const MyButton(this.label, this.typeOfButton, this.showScreen, this.width, this.height, this.fontWeight, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return typeOfButton == 0 ? _buildOutlineButton() : typeOfButton == 1 ? _buildTextButton() : _buildSocialButton();
  }

  Widget _buildOutlineButton() => SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
          onPressed: () {},
          child: Text(label),
        ),
      );

  Widget _buildTextButton() => TextButton(
        onPressed: () {
          showScreen();
        },
        child: Text(label, style: TextStyle(fontWeight: fontWeight),),
      );

  Widget _buildSocialButton() => SizedBox(
    width: width,
    height: height,
    child: OutlinedButton(
      onPressed: () {},
      child: SvgPicture.asset(label, color: Colors.white,),
    ),
  );
}
