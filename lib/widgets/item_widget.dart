import 'package:flutter/material.dart';
import 'package:myapp/models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  // ignore: use_super_parameters
  const ItemWidget({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} Pressed");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaler: TextScaler.linear(1.2),
        style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),),
      ),
    );
  }
}