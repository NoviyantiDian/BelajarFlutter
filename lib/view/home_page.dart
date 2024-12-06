import 'package:aplikasi2/controller/feed_controller.dart';
import 'package:aplikasi2/view/feedbookmark_page.dart';
import 'package:aplikasi2/view/profile_page.dart'; // Tambahkan import untuk halaman Profile
import 'package:flutter/material.dart';
import 'package:aplikasi2/view/feed_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Indeks halaman saat ini

  // Daftar halaman
  final List<Widget> _pages = [
    const HomePageContent(), // Konten halaman Home
    const FeedbookmarkPage(), // Halaman Bookmark
    ProfilePage(), // Halaman Profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: _pages[_currentIndex], // Tampilkan halaman berdasarkan indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Indeks aktif
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Ubah indeks saat tombol ditekan
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Konten untuk halaman Home
class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        controller.refresh();
      },
      child: ListView.builder(
        itemCount: controller.length,
        itemBuilder: (context, index) => FeedCard(
          feed: controller.feed(index),
        ),
      ),
    );
  }
}
