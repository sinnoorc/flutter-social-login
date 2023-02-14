import 'package:flutter/cupertino.dart';

import 'auth_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Login'),
            const SizedBox(height: 20),
            CupertinoButton(
              child: const Text('Login with Google'),
              onPressed: () async => await AuthService().signWithGoogle(),
            ),
          ],
        ),
      ),
    );
  }
}
