import 'package:aplikasi2/controller/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi2/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram',
      style: TextStyle(fontWeight: FontWeight.w400),
      ),),
      body: ListView.builder(
        itemCount: FeedController().feeds.length,
        itemBuilder: (context, index) => FeedCard(feed: FeedController().feeds[index],
      ),
    ));
  }
}

