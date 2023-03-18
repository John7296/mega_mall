import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
        color: Colors.blue,
        height: 200,
        width: 200,
        child: Center(child: Text("Wishlist")),
      ),
    )));
  }
}
