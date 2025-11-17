// File Name : lib\features\taskmanager\ticktick_task.dart

import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_app_bar/custom_app_bar_widget.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_tab_bar/custom_tab_bar.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_task_list/custom_task_list.dart';
import 'package:muslim_prime_ui/core/static/ui_const.dart'; // twelvePx, twentyPx এর জন্য

class TicktickTask extends StatefulWidget {
  const TicktickTask({super.key});

  @override
  State<TicktickTask> createState() => _TicktickTaskState();
}

class _TicktickTaskState extends State<TicktickTask>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TaskViewMode _currentViewMode = TaskViewMode.grid; // ✅ নতুন স্টেট

  // ডেমো ডেটা ছবির উপর ভিত্তি করে (Mutable List)
  final List<Map<String, dynamic>> taskData = [
    {
      'heading': 'This is Heading 1',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before. Jrfwenof ef oefaov awevdncvadj fawej ejfnawef awecf vawej fnawe fawenfwefnawe f wfanwfk awef awenfajwerfera gj jawerv zf g zsdfn sdf sd cqwrdpqwo wdvqeiw rfqw.',
      'isCompleted': true,
      'isStrikethrough': true,
      'cardColor': AppColor.taskCardOrange,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading 2',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardGreen,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading 3',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardPurple,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading 4',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardYellow,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading 5',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before',
      'isCompleted': false,
      'isStrikethrough': false,
      'cardColor': AppColor.taskCardRed,
      'date': '27 Rajab 1444 AH',
      'time': 'Open 24 Hours',
    },
    {
      'heading': 'This is Heading 6',
      'body':
          'Typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before',
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

  // ভিউ মোড টগল করার জন্য ফাংশন
  void _toggleViewMode() {
    setState(() {
      _currentViewMode = _currentViewMode == TaskViewMode.grid
          ? TaskViewMode.list
          : TaskViewMode.grid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Tick Tick Task',
        isRoot: true,
        // actions: [
        //   TextButton(
        //     onPressed: () {}, // View Text Button
        //     child: const Text(
        //       'View',
        //       style: TextStyle(color: AppColor.black54),
        //     ),
        //   ),
        //   IconButton(
        //     onPressed: _toggleViewMode, // ভিউ মোড টগল করা
        //     icon: Icon(
        //       _currentViewMode == TaskViewMode.grid
        //           ? Icons
        //                 .view_module // Grid Icon (ছবিতে 4-ডট আইকন)
        //           : Icons.view_headline, // List Icon (ছবিতে 3-লাইন আইকন)
        //       color: AppColor.black,
        //     ),
        //   ),
        //   const SizedBox(width: eightPx),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: twelvePx,
          vertical: twentyPx,
        ),
        child: Column(
          children: [
            CustomTabBar(
              borderRadius: sixPx,
              indicatorBorderRadius: sixPx,
              indicatorPadding: const EdgeInsets.all(sixPx),
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Family'),
                Tab(text: 'Work'),
                Tab(text: 'Personal'),
              ],
              tabController: _tabController,
            ),
            gapH12,
<<<<<<< Updated upstream
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('View Mode'),
                Row(
                  children: [
                    Text('View'),
                    SizedBox(width: eightPx),
                    IconButton(
                      onPressed: _toggleViewMode, // ভিউ মোড টগল করা
                      icon: Icon(
                        _currentViewMode == TaskViewMode.grid
                            ? Icons
                                  .view_module // Grid Icon (ছবিতে 4-ডট আইকন)
                            : Icons
                                  .view_headline, // List Icon (ছবিতে 3-লাইন আইকন)
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
              ],
=======
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('View Mode'),
                  Row(
                    children: [
                      Text('View'),
                      SizedBox(width: eightPx),
                      IconButton(
                        onPressed: _toggleViewMode, // ভিউ মোড টগল করা
                        icon: Icon(
                          _currentViewMode == TaskViewMode.grid
                              ? Icons
                                    .view_module // Grid Icon (ছবিতে 4-ডট আইকন)
                              : Icons
                                    .view_headline, // List Icon (ছবিতে 3-লাইন আইকন)
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
>>>>>>> Stashed changes
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTaskList(taskData),
                  _buildTaskList(taskData.sublist(1, 3)), // Example subset
                  _buildTaskList(taskData.sublist(3, 4)),
                  _buildTaskList(taskData.sublist(4)),
                ],
              ),
            ),
          ],
        ),
      ),
      // FAB (আপনার আগের ধাপের মতো)
      // floatingActionButton: CustomTaskListFAB(onTap: () {}),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildTaskList(List<Map<String, dynamic>> tasks) {
    if (tasks.isEmpty) {
      return const Center(child: Text('No tasks available.'));
    }

    // For list view, use ListView.builder; for grid view, use GridView.builder
    if (_currentViewMode == TaskViewMode.list) {
      return ListView.builder(
        padding: const EdgeInsets.only(top: eightPx),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];

          return CustomTaskCard(
            header: TaskHeader(headline: 'Your Tasks', isGridView: false),
            details: TaskDetails(
              headingText: task['heading'],
              bodyText: task['body'],
              isCompleted: task['isCompleted'],
              isStrikethrough: task['isStrikethrough'],
              cardColor: task['cardColor'],
              dateText: task['date'],
              timeText: task['time'],
              onToggle: () {
                // Toggle the completion status of the task
                setState(() {
                  task['isCompleted'] = !task['isCompleted'];
                  task['isStrikethrough'] = task['isCompleted'];
                });
              },
              viewMode: TaskViewMode.list,
            ),
          );
        },
      );
    } else {
      // Grid view implementation
      return GridView.builder(
        padding: const EdgeInsets.only(top: eightPx),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.88,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];

          return CustomTaskCard(
            header: TaskHeader(headline: 'Your Tasks', isGridView: true),
            details: TaskDetails(
              headingText: task['heading'],
              bodyText: task['body'],
              isCompleted: task['isCompleted'],
              isStrikethrough: task['isStrikethrough'],
              cardColor: task['cardColor'],
              dateText: task['date'],
              timeText: task['time'],
              onToggle: () {
                // Toggle the completion status of the task
                setState(() {
                  task['isCompleted'] = !task['isCompleted'];
                  task['isStrikethrough'] = task['isCompleted'];
                });
              },
              viewMode: TaskViewMode.grid,
            ),
          );
        },
      );
    }
  }
}
