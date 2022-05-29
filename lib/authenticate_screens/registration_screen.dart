import 'package:flutter/material.dart';
import 'package:projects/animations/stagger_animation_registration.dart';

class RegistrationCard extends StatefulWidget {
  final Function showScreen;
  const RegistrationCard(this.showScreen, {Key? key}) : super(key: key);

  @override
  State<RegistrationCard> createState() => _RegistrationCardState();
}

class _RegistrationCardState extends State<RegistrationCard> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 7), vsync: this);

    _playAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
    } on TickerCanceled {
      _controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StaggerAnimationRegistration(controller: _controller.view, showScreen: widget.showScreen,),
      ),
    );
  }
}
