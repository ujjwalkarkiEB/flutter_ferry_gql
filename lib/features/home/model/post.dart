import 'package:auhentication_gql/common/model/user.dart';

class BasicPost {
  BasicPost({required this.id, required this.image, required this.title});

  final String id;
  final String image;
  final String title;
}

class Post {
  Post(
      {required this.id,
      required this.description,
      required this.likeCount,
      required this.commentCount,
      required this.createdAt,
      required this.updatedAt,
      required this.author});

  final String id;
  final String description;
  final int likeCount;
  final int commentCount;
  final DateTime createdAt;
  final DateTime updatedAt;
  final User author;
}
