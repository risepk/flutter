// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final name = " CodePUR";
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
      drawer: MyDrawer(),
    );
  }
}
