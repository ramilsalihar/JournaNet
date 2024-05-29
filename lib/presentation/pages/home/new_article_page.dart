import 'package:flutter/material.dart';
import 'package:swiftui/presentation/widgets/buttons/app_text_button.dart';
import 'package:swiftui/presentation/widgets/forms/app_text_form_field.dart';
import 'package:swiftui/presentation/widgets/forms/selectable_list.dart';

class NewArticlePage extends StatefulWidget {
  const NewArticlePage({super.key});

  @override
  State<NewArticlePage> createState() => _NewArticlePageState();
}

class _NewArticlePageState extends State<NewArticlePage> {
  final headlineController = TextEditingController();
  final statusController = TextEditingController();
  final publisherController = TextEditingController();
  final articleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
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
            Text(
              "New Article",
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
            AppTextFormField(
              hintText: 'Headline',
              controller: headlineController,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: SizedBox(
                height: 27,
                child: SelectableLabelList(
                    // labels: ['basketball', 'football', 'soccer'],
                    // onTap: (String label) {
                    //   print(label);
                    // },
                    ),
              ),
            ),
            AppTextFormField(
              hintText: 'Status',
              controller: statusController,
            ),
            AppTextFormField(
              hintText: 'Publisher',
              controller: publisherController,
            ),
            AppTextFormField(
              hintText: 'Article',
              controller: articleController,
            ),
          ],
        ),
      ),
      floatingActionButton: AppTextButton(title: 'Add', onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
