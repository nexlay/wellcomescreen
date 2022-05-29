import 'package:flutter/material.dart';
import 'package:projects/components/login_layout.dart';


class StaggerAnimationLogin extends StatelessWidget {
  final Function showScreen;
  StaggerAnimationLogin({Key? key, required this.controller, required this.showScreen})
      :

        // Each animation defined here transforms its value during the subset
        // of the controller's duration defined by the animation's interval.
        // For example the opacity animation transforms its value during
        // the first 10% of the controller's duration.

        //Card elevation
        elevation = Tween<double>(
          begin: 1.0,
          end: 10.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.800,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        ),
        //Card opacity
        cardOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.600,
              0.800,
              curve: Curves.ease,
            ),
          ),
        ),
        //Top text opacity (first line)
        opacityText1 = Tween<double>(
          begin: 00.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.125,
              0.250,
              curve: Curves.ease,
            ),
          ),
        ),
        //Top text opacity (second line)
        opacityText2 = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        //Top text opacity (third line)
        opacityText3 = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.375,
              0.600,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> controller;
  final Animation<double> elevation;
  final Animation<double> opacityText1;
  final Animation<double> opacityText2;
  final Animation<double> opacityText3;
  final Animation<double> cardOpacity;

  // This function is called each time the controller "ticks" a new frame.
  // When it runs, all of the animation's values will have been
  // updated to reflect the controller's current value.
  Widget _buildAnimation(BuildContext context, Widget? child) {
   return LoginCardLayout(elevation, opacityText1, opacityText2, opacityText3, cardOpacity, showScreen);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
