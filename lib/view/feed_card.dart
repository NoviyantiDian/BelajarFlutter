import 'package:aplikasi2/controller/feed_controller.dart';
import 'package:aplikasi2/model/feed.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedCard extends StatefulWidget {
  final Feed feed;

  const FeedCard({
    super.key,
    required this.feed,
  });

  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  @override
  Widget build(BuildContext context) {
    final user = widget.feed.user;
    return Card(
      child: Column(
        children: [
          // Header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.avatar),
            ),
            title: Text(user.name),
            subtitle: Text(user.place),
            trailing: Icon(Icons.more_vert),
          ),
          // Image
          Image.network(
            widget.feed.content.image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<FeedController>().like(widget.feed);
                  },
                  child: Icon(
                    widget.feed.content.isLike
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        widget.feed.content.isLike ? Colors.red : Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.chat_bubble),
                const SizedBox(width: 10),
                const Icon(Icons.send_outlined),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    context.read<FeedController>().bookmark(widget.feed);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      widget.feed.content.bookmark
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                    ),
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            title: Text('${widget.feed.content.likes}'),
            subtitle: Text(widget.feed.content.description),
          ),
        ],
      ),
    );
  }
}
