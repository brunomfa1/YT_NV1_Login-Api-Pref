import 'package:flutter/cupertino.dart';
import 'package:yt_splash_login/models/post_model.dart';
import 'package:yt_splash_login/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

  //INICIANDO VAZIO
  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);
  fetch()async{
    posts.value= await _homeRepository.getList();
  }
}