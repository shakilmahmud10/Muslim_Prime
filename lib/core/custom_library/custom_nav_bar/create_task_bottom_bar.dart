import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';

class CreateTaskBottomBar extends StatelessWidget {
  final VoidCallback? onCreateTap;

  const CreateTaskBottomBar({super.key, this.onCreateTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.text_fields_outlined,
                color: AppColor.textSecondaryColorLight,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.format_list_bulleted,
                color: AppColor.textSecondaryColorLight,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.circle, color: AppColor.taskCardYellow),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: AppColor.textSecondaryColorLight,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: onCreateTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFF36B084,
                ), // Green color from image/AppColor
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'Create Task',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
