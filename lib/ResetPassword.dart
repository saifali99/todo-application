import 'package:flutter/material.dart';
import './PasswordSuccessfullyChanged.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: ResetPasswordPage(),
    );
  }
}

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
              "Reset Password",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Reset code has been send to your email, please enter the code and create a new password",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Reset code",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "*****"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter your password"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Confirm password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Re-enter your password"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: openSuccessPage,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060)),
                  child: Text(
                    "Change Password",
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

  void openSuccessPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PasswordSuccessfullyChanged()));
  }
}
