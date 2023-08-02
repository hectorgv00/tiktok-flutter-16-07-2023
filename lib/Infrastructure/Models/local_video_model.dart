import 'package:tiktok/domain/enitites/video_post.dart';

class LocalVideoModel {
  String videoUrl;
  String name;
  int likes;
  int views;

  LocalVideoModel({
    required this.videoUrl,
    required this.name,
    required this.likes,
    required this.views,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        videoUrl: json['videoUrl'] ?? 'No video abailable',
        name: json['name'] ?? 'No name available',
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'videoUrl': videoUrl,
        'name': name,
        'likes': likes,
        'views': views,
      };

  VideoPost toVideoPostEntity() => VideoPost(
        videoUrl: videoUrl,
        caption: name,
        likes: likes,
        views: views,
      );
}
