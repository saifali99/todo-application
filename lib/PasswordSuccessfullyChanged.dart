import 'package:flutter/material.dart';
import './Home.dart';

class PasswordSuccessfullyChanged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: passwordSuccessfullyChangedPage(),
    );
  }
}

class passwordSuccessfullyChangedPage extends StatefulWidget {
  @override
  _passwordSuccessfullyChangedPageState createState() =>
      _passwordSuccessfullyChangedPageState();
}

class _passwordSuccessfullyChangedPageState
    extends State<passwordSuccessfullyChangedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/success.png"))),
          ),
          Text(
            "Successful",
            style: TextStyle(fontSize: 35),
          ),
          Text(
            "You have successfully changed your password. Please use your new password to login!",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: InkWell(
              onTap: openHomePage,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060)),
                child: Text(
                  "Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void openHomePage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
