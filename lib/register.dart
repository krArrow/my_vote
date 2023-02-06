import 'package:flutter/material.dart';
import 'package:loginuicolors/login.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({Key? key}) : super(key: key);

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/icon.png"))),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xAAB19AF5),
              ),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 90,
            right: 90,
          ),
          child: Column(children: [
            TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue.shade50,
                    filled: true,
                    hintText: "Username or Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )))),
            SizedBox(
              height: 10,
            ),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue.shade50,
                    filled: true,
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )))),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xAAB19AF5),
                  borderRadius: BorderRadius.circular(20)),
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              child: TextButton(
                onPressed: () => {},
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Text("Already have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "register",
                    );
                  },
                  child: Text(
                    " Sign In",
                  ))
            ])
          ]),
        ),
      ),
    ]));
  }
}
