import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/widgets/family_item.dart';

class FamilyCarePackages extends StatelessWidget {
  final String title;

  const FamilyCarePackages({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),

          SizedBox(
            height: FamilyCareCard.cardHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return const FamilyCareCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
