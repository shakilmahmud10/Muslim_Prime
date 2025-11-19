import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_app_bar/custom_app_bar_widget.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_nav_bar/create_task_bottom_bar.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey100, // Light gray background
      appBar: CustomAppBar(
        title: 'Create Task',
        isRoot: true,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height:
              400, // Fixed height or flexible based on content? Image shows a large box.
          // Let's make it flexible but with a minimum height or just a large container.
          // Actually, the image shows it taking up a good chunk of space.
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Title is here',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.titleColorLight,
                ),
              ),
              const SizedBox(height: 8),
              Divider(color: Colors.grey.withOpacity(0.2), thickness: 1),
              const SizedBox(height: 8),
              const Expanded(
                child: TextField(
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    hintText: 'Task Details',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.textPrimaryColorLight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CreateTaskBottomBar(
        onCreateTap: () {
          // Handle create task
        },
      ),
    );
  }
}
