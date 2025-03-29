import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Samjad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce App"),
      ),
      body: Center(
        child: Text("Welcome to $name Ecommerce App ")),
    drawer: Drawer(),
    );
  }
}