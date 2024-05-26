class IntroPageData {
  final String title;
  final String description;
  final String imagePath;

  IntroPageData({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<IntroPageData> introPageData = [
  IntroPageData(
    title: 'App for the journalists',
    description: 'Add and manage your articles',
    imagePath: 'assets/images/intro1.png',
  ),
  IntroPageData(
    title: 'Manage your budget',
    description: 'Add your statistics and earn more',
    imagePath: 'assets/images/intro2.png',
  ),
  IntroPageData(
    title: 'Smart notes',
    description: 'Integrated notes to help you in the events',
    imagePath: 'assets/images/intro3.png',
  ),
];
