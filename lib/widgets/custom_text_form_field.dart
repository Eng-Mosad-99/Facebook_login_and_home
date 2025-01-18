
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffb3c2e1),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.all(10),
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
