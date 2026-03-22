import 'package:flutter/material.dart';

class Exercise5 extends StatelessWidget {
  const Exercise5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Student! 👋",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: DashboardCard(
                    color: Colors.blue.shade100,
                    title: "12",
                    titleColor: Colors.blue, // add color blue
                    subtitle: "COURSES\n3 in progress",
                    icon: Icons.book,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: DashboardCard(
                    color: Colors.pink.shade100,
                    title: "3.8",
                    titleColor: Colors.red, // add color red
                    subtitle: "GPA\nTop 15%",
                    icon: Icons.emoji_events,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Recent Activity"),
              subtitle: Text("2 new updates"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Assignments"),
              subtitle: Text("3 pending"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              subtitle: Text("Profile & prefs"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color titleColor; // call color

  const DashboardCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.titleColor, // call req title color
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      //use const is NOT a constant
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                  ),
                  Icon(icon, size: 28, color: Colors.black54),
                ],
              ),
              const SizedBox(height: 8),
              Text(subtitle, style: const TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
