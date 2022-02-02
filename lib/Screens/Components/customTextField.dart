import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.maxlines = 1
  }) : super(key: key);
  final controller;
  final hintText;
  final bool isPassword;
  final int maxlines;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          child: TextField(
            controller: widget.controller,
            maxLines: widget.maxlines,
            obscureText: !widget.isPassword ? false : _obscureText,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white70, width: 0.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white70, width: 0.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: widget.hintText,
                fillColor: Colors.white70),
          )
      );
  }
}
