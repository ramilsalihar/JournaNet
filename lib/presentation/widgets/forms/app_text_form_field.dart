import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    // required this.onChanged,
  });

  final String hintText;
  final TextEditingController controller;

  // final void Function(String) onChanged;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white, fontSize: 17),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: widget.hintText ?? '',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 17),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          border: const OutlineInputBorder(),
        ),
        controller: widget.controller,
        onChanged: (value) {},
        keyboardType: TextInputType.text,
        maxLines: null,
      ),
    );
  }
}
