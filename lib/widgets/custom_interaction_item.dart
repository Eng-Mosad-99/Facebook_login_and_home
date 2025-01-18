
import 'package:flutter/material.dart';

class CustomInteractionItem extends StatelessWidget {
  const CustomInteractionItem({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          // 'Like',
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
