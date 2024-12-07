class Photo {
  int? id;
  String? altDescription;
  String? likes;
  Urls? urls;
  String? likerByUser;
  User? user;
  Profile_Image? profileImage;
  
  Photo({
    required this.id,
    required this.altDescription, 
    required this.likes,
    required this.urls,
    required this.likerByUser,
    required this.user,
    required this.profileImage,
    });

    Photo.fromJson(Map<String, dynamic> json){
    id = json['id'];
    altDescription = json['alt_description'];
    likes = json['likes'];
    urls = json['urls'];
    likerByUser = json['liked_by_user'];
    user = json['user'];
    profileImage = json['profile_image'];
  }
    Map<String, dynamic>toJson(){
    final Map<String, dynamic>data = <String, dynamic>{};
    data['id'] = id;
    data['alt_description'] = altDescription;
    data['likes'] = likes;
    data['urls'] = urls;
    data['liked_by_user'] = likerByUser;
    data['user'] = user;
    data['profile_image'] = profileImage;  
    return data;
  }
}

class Urls{
  String? regular;
  
  Urls({
  required this.regular,
});

Urls.fromJson(Map<String, dynamic> json){
    regular = json['regular'];
    }
  
  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data = <String, dynamic>{};
    data['regular'] = regular;  
    return data;
  }
}

class User {
  String? userName;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  
  User({
    required this.userName, 
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    
    });

  User.fromJson(Map<String, dynamic> json){
    userName = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    }
  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data = <String, dynamic>{};
    data['username'] = userName;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['twitter_username'] = twitterUsername;
    return data;
  }

  }

class Profile_Image{
  String? small;

  Profile_Image({
    required this.small,
  });
  Profile_Image.fromJson(Map<String, dynamic> json){
    small= json['small'];
    }

  Map<String, dynamic>toJson(){
    final Map<String, dynamic>data = <String, dynamic>{};
    data['small'] = small;  
    return data;
  }
}

