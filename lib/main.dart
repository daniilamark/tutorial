import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 118, 207),
        body: Column(
          children: [
            const Text('Hello Worlssssssssssssd!'),
            const Text('Hello World!'),
            const TextField(
              decoration: InputDecoration(hintText: 'Username'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            TextButton(
                onPressed: () {
                  print("Forgot clicked");
                },
                child: const Text("Forgot password?")),
            ElevatedButton(
                onPressed: () {
                  print("Log in clicked");
                },
                child: const Text("Log in")),
            const Text('Or sign in with'),
            ElevatedButton(
                onPressed: () {
                  print("Log in GOOGLE");
                },
                child: const Text("Login with")),
          ],
        ),
      ),
    );
  }

  mu() {
    print("click");
  }
}
