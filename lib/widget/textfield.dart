import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  String? label, hint;

  CustomTextfield(
      {super.key,
      required this.controller,
      required this.label,
      required this.hint});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool obsecureText = false;

  @override
  Widget build(BuildContext context) {
    if (widget.label == "password") {
      obsecureText = true;
    }
    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: widget.controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
