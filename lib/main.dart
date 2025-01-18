import 'package:facebook_login_screen/screens/facebook_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookLogin());
}

class FacebookLogin extends StatelessWidget {
  const FacebookLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookScreen(),
    );
  }
}
