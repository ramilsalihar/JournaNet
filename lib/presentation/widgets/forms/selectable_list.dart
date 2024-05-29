import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/text_label.dart';

class SelectableLabelList extends StatefulWidget {
  const SelectableLabelList({super.key});

  @override
  State<SelectableLabelList> createState() => _SelectableLabelListState();
}

class _SelectableLabelListState extends State<SelectableLabelList> {
  final Set<String> selectedLabels = {};

  void onLabelSelected(String label) {
    setState(() {
      if (selectedLabels.contains(label)) {
        selectedLabels.remove(label);
      } else {
        selectedLabels.add(label);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        TextLabel(
          label: 'basketball',
          isSelected: selectedLabels.contains('basketball'),
          onTap: onLabelSelected,
        ),
        TextLabel(
          label: 'football',
          isSelected: selectedLabels.contains('football'),
          onTap: onLabelSelected,
        ),
        TextLabel(
          label: 'volleyball',
          isSelected: selectedLabels.contains('volleyball'),
          onTap: onLabelSelected,
        ),
        TextLabel(
          label: 'hockey',
          isSelected: selectedLabels.contains('hockey'),
          onTap: onLabelSelected,
        ),
        TextLabel(
          label: 'box',
          isSelected: selectedLabels.contains('box'),
          onTap: onLabelSelected,
        ),
        TextLabel(
          label: 'golf',
          isSelected: selectedLabels.contains('golf'),
          onTap: onLabelSelected,
        ),
        TextLabel(
          label: 'others',
          isSelected: selectedLabels.contains('others'),
          onTap: onLabelSelected,
        ),
      ],
    );
  }
}
