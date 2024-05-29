import 'package:flutter/material.dart';
import 'package:swiftui/presentation/pages/home/articles/article_preview_page.dart';
import 'package:swiftui/presentation/widgets/cards/app_card.dart';

final article = '''
  Lorem ipsum dolor sit amet, consectetur adipiscing elit
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
  ''';

class ArticleContent extends StatelessWidget {
  const ArticleContent({super.key});

  @override
  Widget build(BuildContext context) {
    const isEmpty = false;
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          isEmpty ? _buildEmptyMessage() : _buildArticleList(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.only(
        bottom: 10,
        left: 5,
      ),
      child: Text(
        'Articles',
        style: TextStyle(
          fontSize: 34,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildEmptyMessage() {
    return const Expanded(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No articles added',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              Text(
                'Add an article with the plus icon above',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleList() {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return AppCard(
          title: 'How Falcons stay on the top after 15 years',
          label: 'basketball',
          details: '',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ArticlePreviewPage(
                  headline: 'How Falcons stay on the top after 15 years',
                  status: 'Writing',
                  publisher: 'Post in Facebook',
                  article: article,
                  selectedLabels: {'basketball'},
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
