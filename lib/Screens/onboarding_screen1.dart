import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyOnboardingPage extends StatelessWidget {
  const MyOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: SafeArea(
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/vote1.png"),
            ),
          ),
        ));
  }
}
