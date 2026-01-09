import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_colors.dart';

Widget packageBadge() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Text(
      "Packages",
      style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
