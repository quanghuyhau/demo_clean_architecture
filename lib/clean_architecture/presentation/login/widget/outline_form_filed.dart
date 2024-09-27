import 'package:flutter/material.dart';

class OutLineFormField extends StatelessWidget {
  final String hintText;

  const OutLineFormField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        autofocus: true,
        focusNode: FocusNode(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16, 16, 0, 16),
          fillColor: Color(0x90330E0E),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xDADCD5D5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0x90330E0E), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0x90330E0E), width: 2),
          ),
        ),
      ),
    );
  }
}
