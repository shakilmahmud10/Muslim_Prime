import 'package:flutter/material.dart';

class TicktickTask extends StatefulWidget {
  const TicktickTask({super.key});

  @override
  State<TicktickTask> createState() => _TicktickTaskState();
}

class _TicktickTaskState extends State<TicktickTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Tick')));
  }
}
