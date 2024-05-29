import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/text_label.dart';

class EventPreviewPage extends StatelessWidget {
  const EventPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Febers VS Toronto',
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sky arena, Denver',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextLabel(
                  label: '23.01.2024',
                  isSelected: true,
                  onTap: (_) {},
                )
              ],
            ),
            const SizedBox(height: 30),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '1',
                      style: TextStyle(fontSize: 72, color: Colors.white),
                    ),
                    // const SizedBox(width: 50),
                    Text(
                      ':',
                      style: TextStyle(fontSize: 72, color: Colors.white),
                    ),
                    // const SizedBox(width: 50),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 72, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Febers',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Toronto',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
