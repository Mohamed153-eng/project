import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  ReusableTextFormField({
    required this.text,
    required this.prefix,
    required this.textInputType,
    this.suffix,
    this.validator,
  });

  final String text;
  final Icon prefix;
  final IconButton? suffix;
  final TextInputType textInputType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.0,
        left: 10.0,
        right: 10.0,
        bottom: 0.0,
      ),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey[300],
          filled: true,
          hintText: text,
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}

