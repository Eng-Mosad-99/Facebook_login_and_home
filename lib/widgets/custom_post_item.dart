import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_interaction_item.dart';

class CustomPostItem extends StatelessWidget {
  const CustomPostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff2196f3),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'owner',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '3h',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.earthAmericas,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'My Post',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Row(
                children: [
                  Text('100'),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/like.jpg',
                    ),
                    width: 40,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text('100'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Comments',
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              CustomInteractionItem(
                image: 'assets/images/singleLike.jpg',
                text: 'Like',
              ),
              Spacer(),
              CustomInteractionItem(
                image: 'assets/images/comment.jpg',
                text: 'Comment',
              ),
              Spacer(),
              CustomInteractionItem(
                image: 'assets/images/share.png',
                text: 'Share',
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
      ],
    );
  }
}
