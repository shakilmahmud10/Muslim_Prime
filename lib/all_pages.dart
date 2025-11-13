import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/features/taskmanager/ticktick_task.dart';

class AllPages extends StatelessWidget {
  const AllPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TicktickTask()),
                );
              },
              child: const Text('TickTick Task'),
            ),
          ],
        ),
      ),
    );
  }
}
