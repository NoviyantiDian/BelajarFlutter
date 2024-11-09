import 'package:aplikasi2/model/feed.dart';

class FeedRepository {
  fetch(){
    return [
    Feed(
      id: 1,
      user: User(
        name: 'Noviyanti', 
        avatar: 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        place: 'Bandung, Indonesia'
        ), 
      content: Content(
        isLike: false,
        bookmark: false,
        image: 'https://images.pexels.com/photos/2074130/pexels-photo-2074130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        likes: '2.100 Likes', 
        description:' description'
        ),
      ),
    Feed(
      id: 2,
      user: User(
        name: 'Dian', 
        avatar: 'https://images.pexels.com/photos/884977/pexels-photo-884977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        place: 'Cimahi, Indonesia'
        ), 
      content: Content(
        isLike: false,
        bookmark: false,
        image: 'https://images.pexels.com/photos/2474691/pexels-photo-2474691.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        likes: '1.000 Likes', 
        description:' description'
        ),
      ),
    Feed(
      id: 3,
      user: User(
        name: 'Puspita', 
        avatar: 'https://images.pexels.com/photos/247322/pexels-photo-247322.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        place: 'Jakarta, Indonesia'
        ), 
      content: Content(
        isLike: false,
        bookmark: false,
        image: 'https://images.pexels.com/photos/1181248/pexels-photo-1181248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
        likes: '8.500 Likes', 
        description:' description'
        ),
      )
  ];
  }
}