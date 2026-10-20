
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF252930),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 42,
            backgroundColor: Color(0xFFF5B942),
            child: Icon(
              Icons.person,
              size: 48,
              color: Color(0xFF17191D),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Habtamu Befekadu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Software Engineering Student | Full-Stack Developer',
            style: TextStyle(
              color: Color(0xFFF5B942),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'I build web and mobile applications and enjoy '
            'solving real-world problems through software.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xFFF5B942),
                size: 18,
              ),
              SizedBox(width: 6),
              Text(
                'Ethiopia',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
