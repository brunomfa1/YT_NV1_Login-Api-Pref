import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PrefdServices {

  //CHAVE DO SHAREDPREFERENCE
  static const String _key = 'key';
  
  //SALVAR O USUÁRIO EM JSON 
  static save(String user ) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode({
        "user": user,
        "isAuth": true
      }),
    );
  }

  // RECUPERANDO E PEGANDO O 'isAuth' DO JSON 
  static Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    
    var jsonResult = prefs.getString(_key);
    
    if(jsonResult != null){
      var mapUser = jsonDecode(jsonResult);
      return mapUser['isAuth'];
    }

    return false;
  
  }

  static logout()async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }

}