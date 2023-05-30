import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFiledInput extends StatelessWidget {
  const TextFiledInput({super.key, required this.textEditingController, this.isPass = false, required this.textInputType, required this.hintText});
final TextEditingController textEditingController;
final bool isPass;
final String hintText;
final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context)
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
      ),
      keyboardType: this.textInputType,
      obscureText: this.isPass,
    );
  }
}