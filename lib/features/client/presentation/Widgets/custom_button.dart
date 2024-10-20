import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: const BeveledRectangleBorder()),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            fontFamily: "PatrickHandSC", fontSize: 24, color: Colors.white),
      ),
    );
  }
}
