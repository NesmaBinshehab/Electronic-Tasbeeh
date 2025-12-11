import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الحساب"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          "صفحة الحساب",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.orange.shade700,
          ),
        ),
      ),
    );
  }
}