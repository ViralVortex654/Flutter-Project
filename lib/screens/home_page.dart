import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/models/catalogue.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:myapp/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Samjad";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogueJson = await rootBundle.loadString(
      "assets/files/catalogue.json",
    );
    var decodedData = jsonDecode(catalogueJson);
    var productData = decodedData("products");
    print(productData);

  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        title: Text("Ecommerce App", style: TextStyle(color: Colors.blue)),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
