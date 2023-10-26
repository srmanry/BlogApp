class postModel {
  String? message;
  Post? post;

  postModel({this.message, this.post});

  postModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    post = json['post'] != null ? Post.fromJson(json['post']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (post != null) {
      data['post'] = post!.toJson();
    }
    return data;
  }
}

class Post {
  String? body;
  int? userId;
  String? image;
  String? updatedAt;
  String? createdAt;
  int? id;

  Post(
      {this.body,
      this.userId,
      this.image,
      this.updatedAt,
      this.createdAt,
      this.id});

  Post.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    userId = json['user_id'];
    image = json['image'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['body'] = body;
    data['user_id'] = userId;
    data['image'] = image;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}
