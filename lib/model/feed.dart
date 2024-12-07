class Feed {
  final int id;
  final User user;
  final Content content;

  Feed({
    required this.id,
    required this.user, 
    required this.content
    });
}

class Content {
  final String image;
  final String likes;
  final String description;
  bool isLike;
  bool bookmark;

  Content({
    required this.image, 
    required this.likes, 
    required this.description,
    required this.isLike,
    required this.bookmark,
    });
}

class User {
  final String name;
  final String avatar;
  final String place;

  User({
    required this.name, 
    required this.avatar, 
    required this.place
    });
}















































// import 'dart:convert';

// class Feed {
//   int? id;
//   User? user;
 

//   Feed({
//     required this.id,
//     required this.user, 
  
//     });
// }

// class Content {
//   final String image;
//   final String likes;
//   final String description;
//   bool isLike;
//   bool bookmark;

//   Content({
//     required this.image, 
//     required this.likes, 
//     required this.description,
//     required this.isLike,
//     required this.bookmark,
//     });
// }

// class User {
//  String? name;
//  String? avatar;
//  String? place;

//   User({
//     required this.name, 
//     required this.avatar, 
//     required this.place
//     });

//   //factory patern
// Feed.fromJson(Map<string, dynamic>json){
//   id = json ['id'];
//   user = json ['user'] !=null? user.fromJson(json['user']);
//   null;
// }

//   User.fromJson(Map<String, dynamic> json){
//     name = json['name'];
//     avatar = json['avatar'];
//     place = json['place'];
//   }

//   Map<String, dynamic>toJson(){
//     final Map<String, dynamic>data = <String, dynamic>{};
//     data['name'] = name;
//     data['avatar'] = avatar;
//     data['place'] = place;
//     return data;
//   }
// }

