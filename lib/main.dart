import 'package:flutter/material.dart';
import 'package:untitled/secondpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _login() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Nav2() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Secandpage(
              name: _controller1.text,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),

                /// TextField 1
                TextField(
                  controller: _controller1,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    hintText: 'Nesma',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),

                const SizedBox(height: 20),

                /// TextField 2 (readOnly)
                TextField(
                  controller: _controller2,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Name output',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),

                const SizedBox(height: 30),

                /// Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: _login, child: const Text("Submit")),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: _Nav2, child: const Text('Next Page')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}