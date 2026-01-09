import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: SizedBox(
        height: 327,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xCC0B5F5A), Color(0xCC0E7C75)],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 6),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Namaste Ujjwal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Rohini, Sec - 18, Delhi",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.notifications_none, color: Colors.white),
                          SizedBox(width: 12),
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 12),
                          Icon(Icons.person_outline, color: Colors.white),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        const Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            "Search for “X-Ray”",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        Container(
                          width: 48,
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Color(0xFFE0E0E0)),
                            ),
                          ),
                          child: const Icon(
                            Icons.mic,
                            color: Color(0xFF0B5F5A),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),
                  Center(
                    child: const Text(
                      "Healthcare\nIt’s Priority",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        height: 1.15,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
