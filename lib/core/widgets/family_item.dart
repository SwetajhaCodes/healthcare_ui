import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_colors.dart';

class FamilyCareCard extends StatelessWidget {
  const FamilyCareCard({super.key});

  static const double cardHeight = 168;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 344,
      height: cardHeight,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -40,
              top: 20,
              child: Container(
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  color: Color(0xFF9FC6FF),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Get Expert\nDiabetes Care",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Annual Health Checkup\nAdvance",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
                const Spacer(),

                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Rs. 7900/-",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black54,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Text(
                                "Rs. 1500/-",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(width: 80,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                "80%",
                                style: TextStyle(
                                  color: Color(0xFF9AD24B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                "OFF",
                                style: TextStyle(
                                  color: Color(0xFF9AD24B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
