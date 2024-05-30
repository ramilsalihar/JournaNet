import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  final String date;
  final String title;
  final String amount;

  const BudgetCard({
    super.key,
    required this.date,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Icon(Icons.delete, color: Colors.grey, size: 16),
            ],
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Spacer(),
          Text(
            amount,
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
