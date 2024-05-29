import 'package:flutter/material.dart';
import 'package:swiftui/presentation/pages/home/events/event_preview_page.dart';
import 'package:swiftui/presentation/widgets/buttons/app_text_button.dart';
import 'package:swiftui/presentation/widgets/forms/app_text_form_field.dart';
import 'package:swiftui/presentation/widgets/forms/selectable_list.dart';

class NewEventPage extends StatefulWidget {
  const NewEventPage({super.key});

  @override
  State<NewEventPage> createState() => _NewEventPageState();
}

class _NewEventPageState extends State<NewEventPage> {
  final headlineController = TextEditingController();
  final statusController = TextEditingController();
  final publisherController = TextEditingController();
  final articleController = TextEditingController();
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

  void navigateToPreview() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const EventPreviewPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
          bottom: 30,
        ),
        child: ListView(
          children: [
            const Text(
              "New Event",
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    hintText: 'Team 1',
                    controller: headlineController,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppTextFormField(
                    hintText: 'Team Score',
                    controller: headlineController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    hintText: 'Team 2',
                    controller: headlineController,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppTextFormField(
                    hintText: 'Team Score',
                    controller: headlineController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 27,
                child: SelectableLabelList(
                  labels: const [
                    'basketball',
                    'football',
                    'volleyball',
                    'hockey',
                    'box',
                    'golf',
                    'others'
                  ],
                  onLabelSelected: onLabelSelected,
                  selectedLabels: selectedLabels,
                ),
              ),
            ),
            AppTextFormField(
              hintText: 'Subtitle',
              controller: statusController,
            ),
            AppTextFormField(
              hintText: 'date',
              controller: articleController,
              keyboardType: TextInputType.datetime,
            ),
          ],
        ),
      ),
      floatingActionButton: AppTextButton(
        title: 'Add',
        onPressed: navigateToPreview,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
