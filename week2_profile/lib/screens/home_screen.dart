import 'package:flutter/material.dart';
import '../widgets/student_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Profile')),
      body: const Center(child: StudentCard()),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
