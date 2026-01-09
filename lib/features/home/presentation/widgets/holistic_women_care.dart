import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_spacing.dart';

class HolisticWomenCare extends StatelessWidget {
  final String title;

  const HolisticWomenCare({super.key, required this.title});

  static const double _cardHeight = 72;
  static const double _itemHeight = 110;

  @override
  Widget build(BuildContext context) {
    final items = [
      "PCOS",
      "Fertility",
      "Bad Obstetric\nHistory",
      "Pregnancy\nTest",
      "Pregnancy\nPackages",
      "Pregnancy\nUltrasound",
      "Postpartum\nCare",
      "Menopause",
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
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: AppSpacing.md,
              mainAxisSpacing: AppSpacing.md,
              mainAxisExtent: _itemHeight,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: _cardHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFDDEDEA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),

                  const SizedBox(height: 6),
                  Text(
                    items[index],
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height: 1.25,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
