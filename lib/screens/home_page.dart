import 'package:flutter/material.dart';
import 'package:myapp/models/catalogue.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:myapp/widgets/item_widget.dart';

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
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          return ItemWidget(item: CatalogModel.items[index],);
        }
        ),
    drawer: MyDrawer(),
    );
  }
}



