import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Exercise4Checkout extends StatelessWidget {
  const Exercise4Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Checkout Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Review your order and complete purchase'),
            const SizedBox(height: 40),

            // Complete Checkout button - returns success
            ElevatedButton(
              onPressed: () {
                // Return result to previous screen
                context.pop(true); // true = success
              },
              child: const Text('Complete Checkout'),
            ),
            const SizedBox(height: 10),

            // Cancel button - returns cancel
            OutlinedButton(
              onPressed: () {
                // Return cancel result
                context.pop(false); // false = cancelled
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
