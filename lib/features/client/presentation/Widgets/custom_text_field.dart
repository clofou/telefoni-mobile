import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      this.hintText,
      this.controller,
      this.validator,
      this.obscureText = false,
      this.suffixIcon, this.prefixIcon});
  final String label;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontFamily: "PatrickHand", fontSize: 24),
        ),
        SizedBox(
          height: 64,
          child: TextFormField(
            obscureText: obscureText,
            validator: validator,
            cursorColor: Theme.of(context).primaryColor,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              suffixIconColor: Theme.of(context).primaryColor,
              hintText: hintText,
              iconColor: Theme.of(context).primaryColor,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
