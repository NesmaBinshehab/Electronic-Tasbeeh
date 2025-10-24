import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مسبحة إلكترونية',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true, ),
      home: const MyHomePage(
          title: 'مسبحة إلكترونية'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, required this.title
  });
  final String title;
  @override State<MyHomePage> createState() => _MyHomePageState();
} class _MyHomePageState extends State<MyHomePage> {
  List<int> counts = [0, 0, 0];
  final List<String> texts = ['الحمد لله', 'سبحان الله', 'الله أكبر'];
  @override Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8E1),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle( color: Colors.white,
            fontWeight: FontWeight.bold,
          ), ),
        centerTitle: true,
        backgroundColor:  Color(0xffa86f49), ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < texts.length; i++) ...[
              Text( texts[i],
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
              Text( '${counts[i]}', style: const TextStyle(fontSize: 26), ),
              ElevatedButton(
                onPressed: () => setState(() => counts[i]++),
                child: const Text('اضغط'), ),
              const SizedBox(height: 20), ], ], ), ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState(() => counts = [0, 0, 0]),
        label: const Text(
          'تصفير العدادات',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xffa86f49), ),
    );
  }
}
