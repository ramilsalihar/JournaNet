import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/text_label.dart';

class SelectableLabelList extends StatelessWidget {
  final List<String> labels;
  final Set<String> selectedLabels;
  final Function(String) onLabelSelected;

  const SelectableLabelList({
    super.key,
    required this.labels,
    required this.selectedLabels,
    required this.onLabelSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: labels.map((label) {
        final isSelected = selectedLabels.contains(label);
        return GestureDetector(
          onTap: () => onLabelSelected(label),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 40,
              child: TextLabel(
                label: label,
                isSelected: isSelected,
                onTap: onLabelSelected,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
