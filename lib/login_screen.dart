import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_login/auth_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SignInButton(
              Buttons.FacebookNew,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SignInButton(
              Buttons.Twitter,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SignInButton(
              Buttons.GitHub,
              onPressed: () => AuthService().signWithGithub(),
            ),
            const SizedBox(height: 10),
            SignInButton(
              Buttons.Email,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SignInButton(
              Buttons.Microsoft,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SignInButton(
              Buttons.AppleDark,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
