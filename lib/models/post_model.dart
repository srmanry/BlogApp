import 'package:blockbd/models/usermodel.dart';

class Postmodel {
  int? id;
  String? body;
  String? image;
  int? likecount;
  int? commentscount;
  User? user;
  bool? selfLiked;

  Postmodel({
    this.id,
    this.body,
    this.image,
    this.likecount,
    this.commentscount,
    this.user,
    this.selfLiked,
  });
}
