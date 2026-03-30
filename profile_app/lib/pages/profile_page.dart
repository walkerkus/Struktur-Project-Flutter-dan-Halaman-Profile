import 'package:flutter/material.dart';
import '../services/user_service.dart';
import '../utils/app_colors.dart';
import '../widgets/info_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserService.getUser();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Image
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primary,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),

            const SizedBox(height: 12),

            // Name
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              user.prodi,
              style: const TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // Description
            Text(
              user.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 20),

            // Info Items
            InfoItem(
              icon: Icons.badge,
              title: "NIM",
              value: user.nim,
            ),
            InfoItem(
              icon: Icons.email,
              title: "Email",
              value: user.email,
            ),
            InfoItem(
              icon: Icons.favorite,
              title: "Hobby",
              value: user.hobby,
            ),
          ],
        ),
      ),
    );
  }
}