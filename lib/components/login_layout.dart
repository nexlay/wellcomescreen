import 'package:flutter/material.dart';
import 'my_buttons.dart';
import 'my_text.dart';
import 'my_text_field.dart';

class LoginCardLayout extends StatelessWidget {
  final Animation<double> elevation;
  final Animation<double> opacityText1;
  final Animation<double> opacityText2;
  final Animation<double> opacityText3;
  final Animation<double> cardOpacity;
  final Function showScreen;

  const LoginCardLayout(this.elevation, this.opacityText1, this.opacityText2,
      this.opacityText3, this.cardOpacity, this.showScreen,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 8),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.white,
          Colors.orangeAccent,
        ],
        stops: [opacityText1.value != 0.0 ? 0.7 : 1.0, 0.8],
      )),
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                      opacity: opacityText1.value,
                      child: MyText(
                          "Let's start", Color(Colors.orange.value), 38.0, FontWeight.bold),),
                  Opacity(
                      opacity: opacityText2.value,
                      child: MyText("with", Color(Colors.orange.value), 38.0, FontWeight.bold),),
                  Opacity(
                      opacity: opacityText3.value,
                      child: MyText(
                          "authentication", Color(Colors.orange.value), 38.0, FontWeight.bold),),
                ],
              ),
              const SizedBox(
                height: 48.0,
              ),
              Opacity(
                opacity: cardOpacity.value,
                child: Card(
                  elevation: elevation.value,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 32.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        MyField(
                          'Login',
                          Icon(
                            Icons.email,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        MyField(
                          'Password',
                          Icon(
                            Icons.lock,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        MyButton(
                          'sign in',
                          0,
                          showScreen,
                            double.infinity,
                          55.0,
                          FontWeight.normal,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              "If you're new, try to",
                              Color(Colors.orange.shade400.value),
                              14.0, FontWeight.normal,
                            ),
                            MyButton('sign up', 1, showScreen, double.infinity,
                              55.0,
                              FontWeight.bold,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
