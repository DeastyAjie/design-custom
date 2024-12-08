import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class LoginOVO extends StatelessWidget {
  const LoginOVO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("HomeOVO"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomeOVO');
            },
            child: const Text("HomeOVO"),
          ),

        ],
      ),
    );
  }
}
