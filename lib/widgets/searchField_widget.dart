

import 'package:flutter/material.dart';

class SearchFiledWidget extends StatelessWidget {
  const SearchFiledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[400]),
            hintText: "Search Product Name",
            fillColor: Colors.grey[100],
            suffixIcon: InkWell(
              child: Icon(
                Icons.search,
                size: 35,
                color: Colors.grey[400],
              ),
              onTap: () {
                print("Search");
              },
            ),
          ),
        ),
      ),
    );
  }
}
