import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_spacing.dart';

class RoutineHealthCheckupMen extends StatelessWidget {
  final String title;

  const RoutineHealthCheckupMen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final ageGroups = [
      "Under 15 yrs",
      "15–30 yrs",
      "30–45 yrs",
      "45–60 yrs",
      "Above 60",
    ];

    final bgColors = [
      const Color(0xFFF2E7FF),
      const Color(0xFFE6F0FF),
      const Color(0xFFFFF2CC),
      const Color(0xFFE8F7E4),
      const Color(0xFFFFE6E6),
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
          const SizedBox(height: AppSpacing.md),

          SizedBox(
            height: 121,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: ageGroups.length,
              separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.md),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: bgColors[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 80,
                      child: Text(
                        ageGroups[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
