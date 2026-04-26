import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home_screen.dart';

// import 'screens/exercise1_profile.dart';
// import 'screens/exercise2_router_setup.dart';
import 'screens/exercise3_item_detail.dart';
import 'screens/exercise4_checkout.dart';
import 'screens/exercise5_catalog.dart';

void main() {
  runApp(const MyApp());
}

// Exercise 1
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProfileScreen(),
//     );
//   }
// }

//Exercise 2
// final GoRouter router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const HomeScreen(),
//     ),
//     GoRoute(
//       path: '/detail/:id',
//       builder: (context, state) {
//         final id = state.pathParameters['id']!;
//         return DetailScreen(id: id);
//       },
//     ),
//   ],
// );

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routerConfig: router,
//     );
//   }
// }

//Exercise3
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       title: 'Deep Link Demo',
//       debugShowCheckedModeBanner: false,
//       routerConfig: _router,
//     );
//   }
// }

// final GoRouter _router = GoRouter(
//   initialLocation: '/home',
//   routes: [
//     GoRoute(
//       path: '/home',
//       name: 'home',
//       builder: (context, state) => const HomeScreen(),
//       routes: [
//         GoRoute(
//           path: 'item/:id',
//           name: 'itemDetail',
//           builder: (context, state) {
//             final itemId = state.pathParameters['id']!;
//             return Exercise3ItemDetail(itemId: itemId);
//           },
//         ),
//       ],
//     ),
//   ],
// );

//Exercise 4
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       title: 'Exercise 4 Demo',
//       debugShowCheckedModeBanner: false,
//       routerConfig: _router,
//     );
//   }
// }

// final GoRouter _router = GoRouter(
//   initialLocation: '/home',
//   routes: [
//     GoRoute(
//       path: '/home',
//       name: 'home',
//       builder: (context, state) => const HomeScreen(),
//     ),
//     // Checkout route
//     GoRoute(
//       path: '/checkout',
//       name: 'checkout',
//       builder: (context, state) => const Exercise4Checkout(),
//     ),
//   ],
// );

// Exercise 5
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
      routes: [
        // ✅ Exercise 5: Catalog route with dynamic state parameter
        GoRoute(
          path: 'catalog/:state',
          name: 'catalog',
          builder: (context, state) {
            // Extract the state from the URL path (e.g., 'loading', 'empty')
            final stateType = state.pathParameters['state']!;
            return CatalogScreen(stateType: stateType);
          },
        ),
      ],
    ),
  ],
);
