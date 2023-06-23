import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../utils/my_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/login_image.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login Here',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", label: Text('Username')),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", label: Text('Password')),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  minimumSize: const Size(120, 40)),
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
