import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:yt_splash_login/models/post_model.dart';
import 'package:yt_splash_login/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository{
  Future<List<PostModel>> getList() async { 
    var value = await rootBundle.loadString('assets/data.json');
    //CONVERTENDO O JSON
    List postJson = jsonDecode(value);
    //O '(e)' SERIA CADA OBJETO QUE ESTÁ NO JSON
    return postJson.map((e) => PostModel.fromJason(e)).toList();
  }
}