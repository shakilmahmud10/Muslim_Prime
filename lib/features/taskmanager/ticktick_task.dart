// lib/features/taskmanager/ticktick_task.dart

import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_app_bar/custom_app_bar_widget.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_tab_bar/custom_tab_bar.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_task_list/custom_task_list.dart';

class TicktickTask extends StatefulWidget {
  const TicktickTask({super.key});

  @override
  State<TicktickTask> createState() => _TicktickTaskState();
}

class _TicktickTaskState extends State<TicktickTask>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // State for the demo task
  bool _isTaskCompleted = false;

  // ডেমো ডেটা ছবির উপর ভিত্তি করে
  final List<Map<String, dynamic>> taskData = [
    {
      'heading': 'This is Heading2',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may work for the whole country and for color combinational flag that increase the redandacy of science work.',
      'isCompleted': true,
      'isStrikethrough': true,
      'cardColor': AppColor.taskCardOrange,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may...',
      'isCompleted': true,
      'isStrikethrough': true,
      'cardColor': AppColor.taskCardGreen,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may...',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardPurple,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may...',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardYellow,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may...',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardRed,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may...',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardBlue,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Method to toggle the task completion state
  void _toggleTaskCompletion(bool newValue) {
    setState(() {
      _isTaskCompleted = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tick Tick Task', isRoot: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: [
            CustomTabBar(
              borderRadius: 6,
              indicatorBorderRadius: 6,
              indicatorPadding: const EdgeInsets.all(6),
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Family'),
                Tab(text: 'Work'),
                Tab(text: 'Personal'),
              ],
              tabController: _tabController,
            ),
            const SizedBox(height: 12),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTaskList(taskData),
                  _buildTaskList([]), // Family tasks
                  _buildTaskList([]), // Work tasks
                  _buildTaskList([]), // Personal tasks
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // নতুন টাস্ক যোগ করার জন্য
      //   },
      //   backgroundColor: AppColor.primaryColorLight100,
      //   child: const Icon(Icons.add, color: Colors.white),
      //   shape: const CircleBorder(),
      // ),
    );
  }

  Widget _buildTaskList(List<Map<String, dynamic>> tasks) {
    if (tasks.isEmpty) {
      return const Center(child: Text('No tasks available.'));
    }
    return GridView.builder(
      padding: const EdgeInsets.only(top: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return CustomTaskCard(
          headingText: task['heading'],
          bodyText: task['body'],
          isCompleted: task['isCompleted'],
          isStrikethrough: task['isStrikethrough'],
          cardColor: task['cardColor'],
          dateText: task['date'],
          timeText: task['time'],
          // onTap: () {
          //   print('${task['heading']} tapped!');
          // },
          onToggle: () {
            // Toggle the completion status of the task
            setState(() {
              task['isCompleted'] = !task['isCompleted'];
              task['isStrikethrough'] = task['isCompleted'];
            });
          },
        );
      },
    );
  }
}
