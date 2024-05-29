import 'package:flutter/material.dart';
import 'package:swiftui/presentation/pages/home/new_article_page.dart';
import 'package:swiftui/presentation/widgets/text_label.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => NewArticlePage()));
      },
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextLabel(label: 'basketball', isSelected: true, onTap: (_) {}),
              const SizedBox(
                height: 5,
              ),
              Text(
                'How Falcons stay on the top after 15 years',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
