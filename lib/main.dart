import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مسبحة إلكترونية',
      theme: ThemeData( primarySwatch: Colors.teal, ),
      home: const MyHomePage(
          title: 'مسبحة إلكترونية'),
      debugShowCheckedModeBanner: false,
    ); } }

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, required this.title
  });
  final String title;
  @override State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String currentText = "ابدأ"; List<int> counts = [0, 0, 0];


void increment(int index, String text) {
  setState(() {
    counts[index]++;
    currentText = text;
  }); }
void resetCounts() {
  setState(() {
    counts = [0, 0, 0];
    currentText = "ابدأ";
  }); }
int getCurrentCount() {
  switch (currentText) {
    case "الحمد لله": return counts[0];
    case "الله أكبر": return counts[1];
    case "سبحان الله": return counts[2];
    default: return 0;
  } }
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xffe6dad3),
    appBar: AppBar(
      title: Text(widget.title), centerTitle: true, ),
    body: Center(
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text( currentText,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ), const SizedBox(height: 10),
          Text( '${getCurrentCount()}',
            style: const TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold),
          ), const SizedBox(height: 20),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton( onPressed: () => increment(0, "الحمد لله"),
                style: ElevatedButton.styleFrom( backgroundColor: Color(0xffefc895),foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                child: const Text('الحمد لله'), ),
              const SizedBox(width: 10),
              ElevatedButton( onPressed: () => increment(1, "الله أكبر"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffefc895),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                child: const Text('الله أكبر'), ),
              const SizedBox(width: 10),
              ElevatedButton( onPressed: () => increment(2, "سبحان الله"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffefc895),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10)),
                child: const Text('سبحان الله'), ), ], ),
          const SizedBox(height: 30),
          ElevatedButton( onPressed: resetCounts,
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff805721),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 30,
                    vertical: 15)),
            child: const Text( 'تصفير العدادات',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold), ), ) ], ), ), );
} }



