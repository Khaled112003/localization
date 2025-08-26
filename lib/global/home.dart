import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Switch(value: false, onChanged: (value) {}),
          const Center(
            child: Text('Welcome to the Home Page!'),
          ),
        ],
      ),
    );
  }
}