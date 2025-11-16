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
            ButtonCall(
              buttonText: 'TickTick Tsk',
              redirectPage: TicktickTask(),
            ),
            ButtonCall(buttonText: 'Sample'),
          ],
        ),
      ),
    );
  }
}

class ButtonCall extends StatelessWidget {
  const ButtonCall({required this.buttonText, this.redirectPage, super.key});
  final String buttonText;
  final Widget? redirectPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (redirectPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => redirectPage!),
          );
        } else {}
      },
      child: Text(buttonText),
    );
  }
}
