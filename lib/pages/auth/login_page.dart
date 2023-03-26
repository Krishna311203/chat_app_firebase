// ignore_for_file: unnecessary_const

import 'package:chat_app_firebase/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Stock It",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Login to see your stocks",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Image.asset(
                  "assets/login1.png",
                  width: double.infinity,
                ),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined)),
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: "Password", prefixIcon: Icon(Icons.lock)),
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
