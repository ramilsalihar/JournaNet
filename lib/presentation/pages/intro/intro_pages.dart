import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swiftui/data/intro_page_data.dart';
import 'package:swiftui/presentation/pages/home/home_page.dart';
import 'package:swiftui/presentation/widgets/buttons/app_text_button.dart';

class IntroPages extends StatefulWidget {
  const IntroPages({super.key});

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  bool _isLastPage = false;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Stack(
        children: [
          SizedBox(
            // height: height * 0.9,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _isLastPage = (index == 2);
                });
              },
              // physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildBody(context, introPageData[0]),
                _buildBody(context, introPageData[0]),
                _buildBody(context, introPageData[0]),
              ],
            ),
          ),
          Positioned.fill(
            top: height * 0.45,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                    radius: 20.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    paintStyle: PaintingStyle.fill,
                    dotColor: theme.colorScheme.secondary.withOpacity(0.3),
                    activeDotColor: theme.colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AppTextButton(
              title: 'Next',
              onPressed: () {
                _isLastPage
                    ? Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ))
                    : _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context, IntroPageData page) {
  return Column(
    children: [
      Image.asset(
        page.imagePath,
        fit: BoxFit.cover,
      ),
      const SizedBox(
        height: 50,
      ),
      Text(
        page.title,
        style: TextStyle(color: Colors.white),
      ),
      Text(
        page.description,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
