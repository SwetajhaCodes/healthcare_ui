import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_spacing.dart';

class CategoryGrid extends StatelessWidget {
  final String title;
  const CategoryGrid({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final bgColors = [
      const Color(0xFFDDEDEA),
      const Color(0xFFFBE3E1),
      const Color(0xFFDDEDEA),
      const Color(0xFFFBE3E1),
      const Color(0xFFDDEDEA),
      const Color(0xFFFBE3E1),
    ];

    final labels = [
      "Full Body\nCheckup",
      "Diabetes",
      "Hair &\nSkin Care",
      "Vitamins",
      "Fever &\nInfection",
      "Thyroid",
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 14),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: AppSpacing.md,
              mainAxisSpacing: AppSpacing.md,
              childAspectRatio: 0.72,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: bgColors[index],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      labels[index],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 72,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
