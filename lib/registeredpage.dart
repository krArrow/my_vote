import 'package:flutter/material.dart';

class MyForwardPage extends StatefulWidget {
  const MyForwardPage({Key? key}) : super(key: key);

  @override
  State<MyForwardPage> createState() => _MyForwardPageState();
}

class _MyForwardPageState extends State<MyForwardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/done.png",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Sucessfully Submitted!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 270,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xAAB19AF5),
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                child: TextButton(
                  onPressed: () => {},
                  child: Text(
                    "Go to Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
