import 'package:flutter/material.dart';

class LiveHealthyFooter extends StatelessWidget {
  const LiveHealthyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          const Text(
            "Live\nHealthy",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              height: 1.1,
              color: Color(0xFFD1D5DB),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Crafted with ",
                style: TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
              ),
              Text("❤️", style: TextStyle(fontSize: 12)),
              Text(
                " in India",
                style: TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
