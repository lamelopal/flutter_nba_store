import 'package:flutter/material.dart';

class LoginSubmit extends StatelessWidget {
  String? textSubmit;
  IconData? iconSubmit;
  final TextEditingController controller;

  LoginSubmit({
    super.key,
    this.textSubmit,
    this.iconSubmit,
    required this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "$textSubmit",
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: iconSubmit != null
            ? Icon(
                iconSubmit,
                color: const Color(0xffED7549),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffED7549),
          ),
        ),
      ),
    );
  }
}
