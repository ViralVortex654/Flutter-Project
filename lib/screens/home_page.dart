import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Samjad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,

        title: Text("Ecommerce App", style: TextStyle(color: Colors.blue),),

      ),
      body: Center(
        child: Text("Welcome to $name Ecommerce App ")),
    drawer: MyDrawer(),
    );
  }
}



