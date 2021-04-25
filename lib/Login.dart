import 'package:flutter/material.dart';
import './ForgotPassword.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Welcome Back!", style: TextStyle(fontSize: 35)),
            Text("Sign in to continue...",
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(
              height: 20,
            ),
            Text("User Name", style: TextStyle(fontSize: 23)),
            TextField(
              decoration: InputDecoration(hintText: "Alex Peter"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Password", style: TextStyle(fontSize: 23)),
            TextField(
              decoration: InputDecoration(hintText: "Enter your password"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openForgotPassword,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            Expanded(
                child: Center(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060)),
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }
}
