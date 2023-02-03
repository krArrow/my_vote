import 'package:flutter/material.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/registeredpage.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Container(
              padding: EdgeInsets.only(bottom: 220),
              child: Center(
                child: Text(
                  "Welcome !",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
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
                          hintText: "Username",
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
                      decoration: InputDecoration(
                          fillColor: Colors.lightBlue.shade50,
                          filled: true,
                          hintText: "Enter Mobile no.",
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
                    height: 10,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.lightBlue.shade50,
                          filled: true,
                          hintText: "Confirm Password",
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
                    padding: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    child: TextButton(
                      onPressed: () => {
                        Navigator.pushNamed(
                          context,
                          "registeredpage",
                        )
                      },
                      child: Text('Register',
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
          ]),
        ));
  }
}
