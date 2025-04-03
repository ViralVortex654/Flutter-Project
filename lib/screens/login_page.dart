import 'package:flutter/material.dart';
import 'package:myapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  Future<void> moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      if (!mounted) return;
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset('assets/images/hey.png', fit: BoxFit.cover),
              SizedBox(height: 20.0),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Column(
                  children: [
                    // Username field: only checks for emptiness.
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter userName",
                        labelText: "UserName",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "UserName cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    // Password field: checks for emptiness and a minimum length of 6.
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),
                      child: Material(
                        color: const Color.fromARGB(255, 10, 72, 243),
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 12,
                        ),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 150 : 100,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
