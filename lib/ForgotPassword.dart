import 'package:flutter/material.dart';
import './ResetPassword.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: forgotPasswordPage(),
    );
  }
}

class forgotPasswordPage extends StatefulWidget {
  @override
  _forgotPasswordPageState createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
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
            Text(
              "Forgot Password",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Please enter your mail ID to receive your password and reset information",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Mail ID",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "john@example.com"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: openResetPassword,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060)),
                  child: Text(
                    "Send Request",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openResetPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResetPassword()));
  }
}
