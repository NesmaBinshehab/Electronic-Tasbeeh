import 'package:flutter/material.dart';

class Secandpage extends StatelessWidget {
  final String name;

  Secandpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Welcome!', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}