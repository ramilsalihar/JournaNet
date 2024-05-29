import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/cards/article_card.dart';

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
        return const ArticleCard();
      }),
    );
  }
}
