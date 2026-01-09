import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_colors.dart';
import 'package:healthcare_dashbaord/core/widgets/Info_Item.dart';
import 'package:healthcare_dashbaord/core/widgets/chip_item.dart';
import 'package:healthcare_dashbaord/core/widgets/package_badge.dart';

class HorizontalPackages extends StatelessWidget {
  final String title;
  const HorizontalPackages({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),

          SizedBox(
            height: 305,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  width: 260,
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          chip(
                            text: "For Male & Female",
                            bg: Color(0xFFDDEDEA),
                            textColor: Colors.black87,
                          ),
                          packageBadge(),
                        ],
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Fit India Full Body Checkup with Vitamin screening free HsRP",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        "Test included: Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count...+88 more",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          InfoItem(
                            label: "Tests Included\n93 Test",
                            icon: Icons.science,
                          ),
                          InfoItem(
                            label: "Reports within\n24 Hours",
                            icon: Icons.insert_chart,
                          ),
                          InfoItem(
                            label: "Fasting Required\n12 Hours",
                            icon: Icons.access_time,
                          ),
                        ],
                      ),

                      const Spacer(),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Row(
                                  children: [
                                    Text(
                                      "₹1050",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      "₹7600",
                                      style: TextStyle(
                                        fontSize: 11,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Or Pay ₹960 with Annual plan.",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 8),
                          SizedBox(
                            height: 36,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                "Book Now →",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
