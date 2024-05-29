import 'package:flutter/material.dart';
import 'package:swiftui/presentation/pages/home/articles/article_content.dart';
import 'package:swiftui/presentation/pages/home/articles/new_article_page.dart';
import 'package:swiftui/presentation/pages/home/events/event_content.dart';
import 'package:swiftui/presentation/pages/home/events/new_event_page.dart';
import 'package:swiftui/presentation/widgets/layout/app_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const [
            ArticleContent(),
            EventContent(),
            Center(
              child: Text('Medication'),
            ),
            Center(
              child: Text('Medication'),
            ),
            Center(
              child: Text('Medication'),
            ),
          ],
        ),
        bottomNavigationBar: AppBottomBar(
          selectedIndex: selectedIndex,
          onItemTapped: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: IconButton(
            icon: Image.asset('assets/icons/add.png'),
            onPressed: () {
              if (selectedIndex == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewArticlePage(),
                  ),
                );
              } else if (selectedIndex == 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewEventPage(),
                  ),
                );
              }
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      ),
    );
  }
}
