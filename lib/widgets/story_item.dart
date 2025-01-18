
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: 120,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images/facebookStory.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff2196f3),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        const Positioned(
          bottom: 0,
          left: 25,
          right: 25,
          child: Text(
            'owner',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
