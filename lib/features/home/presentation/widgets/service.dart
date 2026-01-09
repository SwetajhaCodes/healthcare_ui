import 'package:flutter/material.dart';
import 'package:healthcare_dashbaord/core/theme/app_spacing.dart';
import 'package:healthcare_dashbaord/core/widgets/service_item.dart';

class ServicesRow extends StatelessWidget {
  const ServicesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.screenPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ServiceItem(
            icon: Icons.science_outlined,
            title: "Blood Tests",
            subtitle: "CBC, Health Packages",
          ),
          ServiceItem(
            icon: Icons.monitor_heart_outlined,
            title: "X-Rays & Scans",
            subtitle: "Ultrasound, MRI & More",
          ),
          ServiceItem(
            icon: Icons.chat_bubble_outline,
            title: "Book via WhatsApp",
            subtitle: "Appointments & More",
          ),
        ],
      ),
    );
  }
}
