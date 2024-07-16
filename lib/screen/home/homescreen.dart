import 'package:flutter/material.dart';
import 'package:project3_day5/models/produce_items.dart';

import 'category_sealection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          // for appber
          myAppBar(),

          // for SearchBar
          mySearchBar(),
          // for a list of category

          const CategorySelection(),
          // for a product page
          const ProductaItem()
        ],
      )),
    );
  }

  Padding mySearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black12.withOpacity(0.05),
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            fillColor: Colors.white,
            hintText: "Search",
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black26,
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }

  Padding myAppBar() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
          Text(
            "Explore",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.drag_indicator_sharp,
            size: 25,
          ),
        ],
      ),
    );
  }
}
