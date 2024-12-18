import 'package:flutter/material.dart';
import 'package:seek_app/l10n/l10n.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    required this.title,
    required this.controller,
    required this.hint,
    this.isRequired = false,
    this.maxLines = 1,
    this.onTap,
    super.key,
  });

  final String title;
  final String hint;
  final TextEditingController controller;
  final bool isRequired;
  final int maxLines;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              height: 2,
            ),
            children: [
              if (isRequired)
                TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        TextFormField(
          readOnly: onTap != null,
          maxLines: maxLines,
          maxLength: onTap == null
              ? maxLines == 1
                  ? 35
                  : null
              : null,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
            border: const OutlineInputBorder(),
          ),
          onTap: onTap,
          validator: (value) {
            if (value == null || value.isEmpty && isRequired) {
              return l10n.requiredFiled;
            }
            return null;
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
