import 'package:flutter/material.dart';
import 'package:swiftui/presentation/pages/home/article_content.dart';
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
            Center(
              child: Text('Home'),
            ),
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
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      ),
    );
  }
}
