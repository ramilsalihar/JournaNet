import 'package:flutter/material.dart';
import 'package:swiftui/data/intro_page_data.dart';

class IntroLayout extends StatelessWidget {
  const IntroLayout({
    super.key,
    required this.data,
    required this.controller,
  });

  final IntroPageData data;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(data.imagePath),
          // const SizedBox(height: 30),
          // Text(
          //   data.title,
          //   style: TextStyle(color: Colors.white),
          // ),
          // Text(
          //   data.description,
          //   style: TextStyle(color: Colors.white),
          // ),
        ],
      ),
    );
  }
}
