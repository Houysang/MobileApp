import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Exercise 3
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Welcome to Home Screen'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 context.push('/home/item/42');
//               },
//               child: const Text('Go to Detail (id=42)'),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 context.push('/home/item/99');
//               },
//               child: const Text('Go to Detail (id=99)'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Exercise 4
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String _statusMessage = 'No checkout yet';
//   Color _statusColor = Colors.grey;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Welcome to Home Screen',
//               style: TextStyle(fontSize: 18),
//             ),
//             const SizedBox(height: 30),

//             // Go to Checkout button
//             ElevatedButton(
//               onPressed: () => _goToCheckout(),
//               child: const Text('Go to Checkout'),
//             ),
//             const SizedBox(height: 30),

//             // Status message showing checkout result
//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 12,
//               ),
//               decoration: BoxDecoration(
//                 color: _statusColor.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(8),
//                 border: Border.all(color: _statusColor),
//               ),
//               child: Text(
//                 _statusMessage,
//                 style: TextStyle(
//                   color: _statusColor,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Navigate to checkout and handle result
//   Future<void> _goToCheckout() async {
//     // Navigate to checkout and wait for result
//     final result = await context.push<bool>('/checkout');

//     // Handle the result when user returns
//     if (mounted) {
//       setState(() {
//         if (result == true) {
//           _statusMessage = '✓ Checkout Successful!';
//           _statusColor = Colors.green;

//           // Show success snackbar
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Thank you for your purchase!'),
//               backgroundColor: Colors.green,
//             ),
//           );
//         } else if (result == false) {
//           _statusMessage = '✗ Checkout Cancelled';
//           _statusColor = Colors.orange;

//           // Show cancel snackbar
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Order was cancelled'),
//               backgroundColor: Colors.orange,
//             ),
//           );
//         }
//       });
//     }
//   }
// }

//Exercise 5
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.push('/home/catalog/loading'),
              child: const Text('Show Loading State'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.push('/home/catalog/empty'),
              child: const Text('Show Empty State'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.push('/home/catalog/error'),
              child: const Text('Show Error State'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.push('/home/catalog/success'),
              child: const Text('Show Success State'),
            ),
          ],
        ),
      ),
    );
  }
}
