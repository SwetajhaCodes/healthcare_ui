import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_spacing.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Frequently Asked Questions",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.only(
              left: AppSpacing.lg,
              right: AppSpacing.lg,
              bottom: AppSpacing.lg,
            ),
            title: Text("How Home samples collection works?"),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Our trained professional will visit your home and collect samples safely.",
                ),
              ),
            ],
          ),
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.only(
              left: AppSpacing.lg,
              right: AppSpacing.lg,
              bottom: AppSpacing.lg,
            ),
            title: Text("Is fasting required?"),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Some tests require fasting. You will be informed.",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
