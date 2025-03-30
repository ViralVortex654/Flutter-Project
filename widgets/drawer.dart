import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn2.iconfinder.com/data/icons/famous-people-2/512/Al_Pacino.png";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              margin: EdgeInsets.zero,
              accountName: Text("Samjad Khan"),
              accountEmail: Text("samjadtech@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              )
            ),
          ),
        ],
      ),
    );
  }
}
