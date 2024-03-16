import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(children: [
        const Text(
          'Hello, welcome back!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Login to continue',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            hintText: 'Username',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 16), // Add a SizedBox to create space between the widgets
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.5),
          ),
        ),
        TextButton(
          onPressed: () {
            print('Forgot button pressed');
          },
          style:TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Forgot Password?'),
        ),
        ElevatedButton(
          onPressed: () {
            print('Login button pressed');
          },
          child: const Text('Login'),
        ),
        const Text('Or sign in with'),
        ElevatedButton(
          onPressed: () {
            print('Google button pressed');
          },
          child: Row(
            children: [
              Image.asset(
                'assets/images/google.png',
                width: 22,
                height: 22,
              ),
              const Text('Login with Google')
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print('Google button pressed');
          },
          child: Row(
            children: [
              Image.asset(
                'assets/images/facebook.png',
                width: 22,
                height: 22,
              ),
              const Text('Login with Facebook')
            ],
          ),
        ),
        Row(
          children: [
            const Text("Don't have an account?"),
            TextButton(
              onPressed: () {
                print('Sign up button pressed');
              },
              child: const Text('Sign up'),
            ),
          ],
        )
      ]),
    );
  }
}
