import 'package:flutter/material.dart';
import 'package:yt_splash_login/services/prefs_services.dart';

class LoginController {
  
  ValueNotifier<bool> inLoeader = ValueNotifier<bool>(false);

  String? _login;  
  setLogin(String value){
    _login = value;
  }
  
  String? _senha;
  setSenha(String value){
    _senha = value;
  } 

  Future<bool> auth ()async{
    inLoeader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoeader.value = false;
    if(_login == 'admin' && _senha == 'admin'){

      PrefdServices.save(_login!);
      return true;

    } return false;
  }

}