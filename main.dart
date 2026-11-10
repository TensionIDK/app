import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

// I used google to know what can I use insted of setState in this method. it sggested to use Voidecallback.
// using setState was causing and error
Widget btn({
  required VoidCallback onPressed,
  required String txt,
  required Color color,
  required double size,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      txt,
      style: TextStyle(color: color, fontSize: size),
    ),
  );
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("C O U N T E R   A P P", style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Total Count",
                style: TextStyle(color: Colors.redAccent, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "$count",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                btn(
                  onPressed: () => setState(() => count++),
                  txt: "+",
                  color: Colors.green,
                  size: 30,
                ),
                SizedBox(width: 30),
                btn(
                  onPressed: () => setState(() => count--),
                  txt: "-",
                  color: Colors.red,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 30),
            btn(
              onPressed: () => setState(() => count = 0),
              txt: "reset",
              color: Colors.blueGrey,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
