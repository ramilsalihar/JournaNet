import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/text_label.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.details,
    required this.title,
    required this.label,
    required this.onTap,
  });

  final String title;
  final String label;
  final String details;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor.withOpacity(0.7),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLabel(label: label, isSelected: true, onTap: (_) {}),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 10,
                // top: 5,
                child: Text(
                  details,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
