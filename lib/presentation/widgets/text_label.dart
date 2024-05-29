import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(String) onTap;

  const TextLabel({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(label),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SizedBox(
          height: 40,
          child: Container(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color:
                  isSelected ? Colors.blue : Colors.blueAccent.withOpacity(0.3),
            ),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 11,
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
