import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url =
    'https://images.pexels.com/photos/28888373/pexels-photo-28888373/free-photo-of-seagulls-flying-over-istanbul-waterfront.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    return Card(
      child: Column(
        children: [
          //header
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
            ),
            title: Text('Marry Jane'),
            subtitle: Text('Status'),
            trailing: Icon(Icons.arrow_right),
          ),
          Image.network('https://images.pexels.com/photos/27893233/pexels-photo-27893233/free-photo-of-woman-in-shirt-photographing-with-digital-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Row(
              children: const [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                )
                Icon(Icons.chat_bubble),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.send_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}