import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final String label;
  final IconData icon;
  const InfoItem({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 14, color: Colors.green.shade800),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10, height: 1.3),
        ),
      ],
    );
  }
}
