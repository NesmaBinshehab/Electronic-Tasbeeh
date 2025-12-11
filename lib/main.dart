import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text( "CV",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1.2,
            ), ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFA873E1),
                Color(0xFF7097DA)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ), ),
          child: Center( child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfff4f3f3),
                        Color(0xffbdafbf),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff272626),
                        blurRadius: 25,
                        offset: const Offset(0, 6),
                      ), ], ),
                  child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 80, 25, 25),
                    child:
                    Column(
                      children: [
                        const Text( "نسمة بن شهاب",
                          style: TextStyle( fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ), ),
                        const Text( "طالبة تقنية معلومات",
                          style: TextStyle( fontSize: 16,
                            color: Colors.grey,
                          ), ),
                        const SizedBox(height: 25),
                        buildInfoRow(Icons.email,
                            "nesmabinshehab@gmail.com"),
                        buildInfoRow( Icons.phone, "777777777"),
                        buildInfoRow( Icons.location_on, "اليمن - حضرموت"),
                        const Divider(height: 40, thickness: 1),
                  Row( children: [
                    Expanded( child: Column(
                      children:
                      const [ Text( "المؤهلات العلمية",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ), ),
                        SizedBox(height: 10),
                        Text( "- دبلوم لغة إنجليزية\n- شهادة الرخصة الدولية لقيادة الحاسوب",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ), ], ), ),
                    Container( height: 90, width: 1,
                      color: Colors.grey.shade400,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Expanded( child: Column(
                      children: const [
                        Text( "المؤهلات العملية",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ), ),
                        SizedBox(height: 10),
                        Text( "- تطوير مواقع ويب \n- تطوير مشاريع Flutter شخصية",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ), ], ), ), ], ),
                        const Divider(height: 40, thickness: 1),
                        const Text( "المهارات",
                          style: TextStyle( fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ), ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [
                      SkillChip("Flutter"),
                      SkillChip("Dart"),
                      SkillChip("Unity"),
                      SkillChip("JavaScript"),
                      SkillChip("UI/UX"),
                      SkillChip("JAVA"),
                    ], ), ], ), ), ),
                const Positioned( top: 10,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/4.jpg'),
                  ), ), ], ), ), ), ),
      ));
  }
  static Widget buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.indigo),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 16)),
        ], ), ); } }
class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip(this.label, {super.key});
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label, style: const TextStyle(color:Colors.white), ),
      backgroundColor: Colors.indigo, padding:
    const EdgeInsets.symmetric(horizontal: 10, vertical: 6), ); } }

