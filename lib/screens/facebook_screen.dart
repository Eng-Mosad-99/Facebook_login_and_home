import 'package:facebook_login_screen/screens/home_screen.dart';
import 'package:facebook_login_screen/widgets/custom_button.dart';
import 'package:facebook_login_screen/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                FontAwesomeIcons.facebookF,
                size: 50,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFormField(
              hintText: 'Email or phone number',
            ),
            const CustomTextFormField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Sign up for Facebook',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forget Password?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
