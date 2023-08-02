import 'package:flutter/material.dart';
import 'package:tiktok/Infrastructure/Models/local_video_model.dart';
import 'package:tiktok/domain/enitites/video_post.dart';
import 'package:tiktok/shared/data/local_video_posts.dart';

class DicoverProvider extends ChangeNotifier {
  // TODO: Repository, Datasource

  bool initialLoaduing = false;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    
    
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();


    videos.addAll(newVideos);
    initialLoaduing = true;
    notifyListeners();
  }
}
