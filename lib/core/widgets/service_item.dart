import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: const Color(0xFFE8F4F3),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, size: 28, color: const Color(0xFF0E7C75)),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              color: Colors.grey,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
