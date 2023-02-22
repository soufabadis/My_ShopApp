import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obsecuretext;
  final Function validator;
  final String text;
  final Widget prefixicon;
  final Widget suffixicon;

  const MyTextFormField(
      {required this.validator,
      required this.obsecuretext,
      required this.controller,
      required this.text,
      required this.prefixicon,
      required this.suffixicon,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecuretext,
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        hintStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xff777474)),
        hintText: text,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black12)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black12)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0x1ff10909))),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0x1fef1b1b))),
      ),
    );
  }
}
