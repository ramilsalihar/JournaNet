import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/buttons/app_toggle_button.dart';
import 'package:swiftui/presentation/widgets/cards/budget_card.dart';

class BudgetContent extends StatelessWidget {
  const BudgetContent({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = TabController(length: 2, vsync: Scaffold.of(context));
    final isEmpty = false;

    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader('Budget'),
          const SizedBox(height: 16),
          AppToggleButton(
            tabController: tabController,
          ),
          const SizedBox(height: 16),
          isEmpty
              ? _buildEmptyMessage('No budget items added')
              : Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      _buildBudgetList(isIncome: true),
                      _buildBudgetList(isIncome: false),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 5,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 34,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildEmptyMessage(String message) {
    return const Expanded(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No budget items added',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              Text(
                'Add an item with the plus icon above',
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

  Widget _buildBudgetList({required bool isIncome}) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return BudgetCard(
          date: '23.01.2024',
          title: 'How Falcons stay on the top after 15 years',
          amount: isIncome ? '+\$150' : '-\$150',
        );
      },
    );
  }
}
