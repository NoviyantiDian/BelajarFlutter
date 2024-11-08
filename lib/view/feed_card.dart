import 'package:aplikasi2/model/feed.dart';
import 'package:flutter/material.dart';

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
  bool isLiked = false; // State variable to track if the post is liked
  bool isBookmarked =
      false; // State variable to track if the post is bookmarked

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

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
          // Like, comment, share, and bookmark icons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Row(
              children: [
                GestureDetector(
                  onTap: toggleLike,
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.chat_bubble),
                const SizedBox(width: 10),
                const Icon(Icons.send_outlined),
                const Spacer(),
                GestureDetector(
                  onTap: toggleBookmark,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Likes and description
          ListTile(
            title: Text('${widget.feed.content.likes}'),
            subtitle: Text(widget.feed.content.description),
          ),
        ],
      ),
    );
  }
}
