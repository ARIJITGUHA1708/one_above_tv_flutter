import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final bool isNumberInput;
  final String prefixIconPath;
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    this.onFieldSubmitted,
    this.onChanged,
    this.isNumberInput = false,
    required this.prefixIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
