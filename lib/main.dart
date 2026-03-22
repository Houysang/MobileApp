import 'package:flutter/material.dart';

// logic
import 'logic/exercise1.dart';
import 'logic/exercise2.dart';

// Screens
import 'screens/exercise3.dart';
import 'screens/exercise4.dart';
import 'screens/exercise5.dart';

void main() {
  //runExercises(); // 👈 RUN EXERCISE 1 & 2
  runApp(const MyApp());
}

// void runExercises() {
// EXERCISE 1
// var scores = [95, 82, 67, 91, 73, 58, 88, 45, 76, 99];
// print("Exercise 1 Result:");
// print(classifyScores(scores));

// EXERCISE 2
//   List shapes = [
//     Circle(5),
//     Rectangle(4, 6),
//     Triangle(3, 8),
//   ];

//   print("\nExercise 2 Result:");
//   for (var s in shapes) {
//     print(s.describe());
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exercises',
      home: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercises Menu"), centerTitle: true),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Exercise 3 - Profile Card"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            },
          ),
          ListTile(
            title: const Text("Exercise 4 - Product Card"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Exercise4()),
              );
            },
          ),
          ListTile(
            title: const Text("Exercise 5 - Two-Column Dashboard"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Exercise5()),
              );
            },
          ),
        ],
      ),
    );
  }
}
