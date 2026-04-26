import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatalogScreen extends StatelessWidget {
  final String stateType;

  const CatalogScreen({super.key, required this.stateType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    switch (stateType) {
      case 'loading':
        // 🔄 Loading State
        return const Center(
          child: CircularProgressIndicator(),
        );

      case 'empty':
        // 📭 Empty State
        return const Center(
          child: Text('No products found'),
        );

      case 'error':
        // ❌ Error State
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Something went wrong'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Simulate retry by going back to loading
                  context.pushReplacement('/home/catalog/loading');
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        );

      case 'success':
        // ✅ Success State
        return GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.5,
          children: const [
            ProductCard(title: 'Laptop'),
            ProductCard(title: 'Smartphone'),
            ProductCard(title: 'Headphones'),
            ProductCard(title: 'Smartwatch'),
            ProductCard(title: 'Camera'),
          ],
        );

      default:
        return const Center(child: Text('Unknown State'));
    }
  }
}

// Helper widget for the product grid
class ProductCard extends StatelessWidget {
  final String title;
  const ProductCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(title),
      ),
    );
  }
}
