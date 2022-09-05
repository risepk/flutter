import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final name = "with an Indian";
  final days = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Build Apps in $days"),
      ),
      body: Center(
        child: Text("Welcome to $days days of flutter With $name"),
      ),
      drawer: const Drawer(),
    );
  }
}
