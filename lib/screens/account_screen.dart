import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
        color: Colors.blue,
        height: 200,
        width: 200,
        child: Center(child: Text("Account")),
      ),
    )));
  }
}
