import 'package:flutter/material.dart';

class Exercise4 extends StatelessWidget {
  const Exercise4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
        backgroundColor: Colors.blue, // ❌ FIXED (was "color")
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          ProductCard(
            name: "Wireless Speaker",
            price: "\$49.99",
            image: Icons.speaker,
            color: Colors.pinkAccent,
          ),
          SizedBox(height: 20),
          ProductCard(
            name: "Headphones Pro",
            price: "\$89.99",
            image: Icons.headphones,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final IconData image;
  final Color color;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            child: Center(child: Icon(image, size: 60)),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text("Bluetooth 5.0"),
                  ],
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: const Size(150, 40),
              foregroundColor: Colors.white, //text color
            ),
            child: const Text("Add to Cart"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
