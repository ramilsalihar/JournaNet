import 'package:flutter/material.dart';
import 'package:swiftui/presentation/pages/home/home_page.dart';
import 'package:swiftui/presentation/widgets/text_label.dart';

class PreviewPage extends StatelessWidget {
  final String headline;
  final String status;
  final String publisher;
  final String article;
  final Set<String> selectedLabels;

  const PreviewPage({
    super.key,
    required this.headline,
    required this.status,
    required this.publisher,
    required this.article,
    required this.selectedLabels,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              headline,
              style: const TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        status,
                        style:
                            const TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        publisher,
                        style:
                            const TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 10,
                  children: selectedLabels
                      .map((label) => TextLabel(
                            label: label,
                            isSelected: true,
                            onTap: (_) {},
                          ))
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              article,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
