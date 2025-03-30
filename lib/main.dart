import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page.dart';
import 'package:myapp/screens/login_page.dart';
import 'package:myapp/utils/routes.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/themes.dart';



void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // bringVegetables(thaila: true);

    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,

      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
        
      },

    );
  }
}

// bringVegetables({required bool thaila, int rupees = 100}){
//   // Take cycle
//   // Go to Subszimandi
// }