import 'package:flutter/material.dart';
import 'feedbookmark_page.dart'; 
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {}, 
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/29632548/pexels-photo-29632548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Noviyanti Dian Puspita',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'UI/UX Designer',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('My Membership'),
            onTap: () {}, 
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('My Collection'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FeedBookmarkPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
             
            },
          ),
        ],
      ),
    );
  }
}
