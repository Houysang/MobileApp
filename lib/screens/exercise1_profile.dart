import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.pink,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ProfileHeader(),
                SizedBox(height: 20),
                ProfileInfo(),
              ],
            );
          }

          return Row(
            children: const [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: ProfileHeader(),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: ProfileInfo(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage("assets/image.png"),
        ),
        SizedBox(height: 10),
        Text(
          "Guov Houysang",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text("Flutter Developer", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        Text("Email: guov.houysang@example.com"),
        SizedBox(height: 10),
        Text("Phone: +855 768555552"),
        SizedBox(height: 10),
        Text("Location: Phnom Penh, Cambodia"),
      ],
    );
  }
}
