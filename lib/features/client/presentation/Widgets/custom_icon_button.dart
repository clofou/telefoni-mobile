import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, this.onPressed, this.icon, required this.label});
  final void Function()? onPressed;
  final Widget? icon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 225, 250, 216),
          padding: const EdgeInsets.all(10),
          shape: BeveledRectangleBorder(
              side: BorderSide(
                  width: 0.5, color: Theme.of(context).primaryColor))),
      onPressed: onPressed,
      icon: icon,
      label: label,
    
    );
  }
}
