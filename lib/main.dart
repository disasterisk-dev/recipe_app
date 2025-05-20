import 'package:flutter/material.dart';
import 'package:recipe_app/home.dart';
import 'package:recipe_app/theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      home: const Home(),
    ),
  );
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red[300],
              child: const Text("Hello world"),
            ),
            Container(
              color: Colors.green[400],
              child: const Text("Hello world"),
            ),
            Container(
              color: Colors.blue[500],
              child: const Text("Hello world"),
            ),
          ],
        ),
      ),
    );
  }
}
