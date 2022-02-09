import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphism Design Exp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NeumorphismEffectScreen(),
    );
  }
}

class NeumorphismEffectScreen extends StatefulWidget {
  const NeumorphismEffectScreen({Key? key}) : super(key: key);

  @override
  _NeumorphismEffectScreenState createState() => _NeumorphismEffectScreenState();
}

class _NeumorphismEffectScreenState extends State<NeumorphismEffectScreen> {
  bool isElevated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Neumorphism Design Exp"),),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isElevated = !isElevated;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 800),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: isElevated
                ? [
                  BoxShadow(
                    color: Colors.grey[500]!,
                    offset: const Offset(4,4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: const Offset(-4,-4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ]
                : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

