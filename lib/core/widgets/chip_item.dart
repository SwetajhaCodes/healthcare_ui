import 'package:flutter/material.dart';

Widget chip({
  required String text,
  required Color bg,
  required Color textColor,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    decoration: BoxDecoration(
      color: bg,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
    ),
  );
}
