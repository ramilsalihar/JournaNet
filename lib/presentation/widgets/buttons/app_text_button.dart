import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        bottom: 40.0,
      ),
      child: Container(
        height: 65,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
