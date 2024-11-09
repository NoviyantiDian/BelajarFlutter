import 'package:aplikasi2/model/feed.dart';
import 'package:aplikasi2/model/feed_repository.dart';
import 'package:flutter/material.dart';


class FeedController extends ChangeNotifier {
  List<Feed> feeds = FeedRepository().fetch();
  int get length => feeds.length;

  Feed feed(int index){
    return feeds[index];
  }
  like(Feed feed){
    feeds.firstWhere(
      (element)=> element.id == feed.id,
      ).content.isLike = !feed.content.isLike ;
      notifyListeners();
  }
  bookmark(Feed feed){
    feeds.firstWhere(
      (element)=> element.id == feed.id,
      ).content.bookmark = !feed.content.bookmark ;
      notifyListeners();
  }

  refresh(){
    feeds = FeedRepository().fetch();
    notifyListeners();
  }


}