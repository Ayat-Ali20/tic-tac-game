import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {

  final Widget child;
  final  VoidCallback onPressed;
  final Gradient gradient;
  final double height;
  final double width;

  // ignore: use_key_in_widget_constructors
  const GradientButton(
      {required this.onPressed, required this.gradient, required this.child, required this.height, required this.width,});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      child: Ink(
        width: width,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child:
        Container(
          height: height,
          width: width,

            alignment: Alignment.center,
            child: child
        ),
      ),
      splashColor: Colors.white,
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    );
  }
}