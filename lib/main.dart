import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_login/auth_service.dart';
import 'package:google_login/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: AuthService().handleAuthState(),
      debugShowCheckedModeBanner: false,
    );
  }
}
