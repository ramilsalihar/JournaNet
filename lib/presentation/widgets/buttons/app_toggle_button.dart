import 'package:flutter/material.dart';

class AppToggleButton extends StatefulWidget {
  const AppToggleButton({super.key, required this.tabController});

  final TabController tabController;

  @override
  State<AppToggleButton> createState() => _AppToggleButtonState();
}

class _AppToggleButtonState extends State<AppToggleButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: theme.cardColor),
          borderRadius: BorderRadius.circular(10),
          color: theme.cardColor,
        ),
        child: TabBar(
          dividerColor: Colors.transparent,
          controller: widget.tabController,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Creates border
            color: theme.colorScheme.secondary,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.5),
          padding: const EdgeInsets.symmetric(
            horizontal: 2,
            vertical: 2,
          ),
          tabs: const [
            Tab(
              child: Text('Income'),
            ),
            Tab(
              child: Text('Expenses'),
            ),
          ],
        ),
      ),
    );
  }
}
