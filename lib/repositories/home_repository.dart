import 'package:yt_splash_login/models/post_model.dart';

abstract class HomeRepository {

  Future<List<PostModel>> getList();
  
}