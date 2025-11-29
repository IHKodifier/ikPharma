import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search patients, drugs, etc',
                  hintStyle: GoogleFonts.inter(color: Colors.grey.shade500),
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.grey.shade500),
                ),
              ),
            ),
          ),
          const SizedBox(width: 32),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(width: 16),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.help_outline, color: Colors.grey.shade600),
          ),
          const SizedBox(width: 16),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person_outline, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
