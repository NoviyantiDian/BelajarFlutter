import 'package:aplikasi2/model/feed.dart';
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;
  
  const FeedCard({
    super.key, 
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    final user = feed.user;   
    return Card(
      child: Column(
        children: [
          //header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(feed.user.avatar),
            ),
            title: Text(feed.user.name),
            subtitle: Text(feed.user.place),
            trailing: Icon(Icons.more_vert),
          ),
          Image.network(
            feed.content.image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.chat_bubble),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.send_outlined),
              Spacer(flex :1),
              Padding(padding: const EdgeInsets.only(right:8.0)),
              Icon(Icons.bookmark)
              ]),
          ),
          ListTile(
            title: Text(feed.content.likes),
            subtitle: Text(feed.content.description),
          )
        ],
      ),
    );
  }
}