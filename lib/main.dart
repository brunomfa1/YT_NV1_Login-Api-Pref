import 'package:flutter/material.dart';
import 'package:yt_splash_login/pages/details_page.dart';
import 'package:yt_splash_login/pages/home_page.dart';
import 'package:yt_splash_login/pages/login_page.dart';
import 'package:yt_splash_login/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      //ROTAS DO APLICATIVO 
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => const SplashPage(),
        '/login'  : (context) =>  LoginPage(),
        '/home'   : (context) =>  const HomePage(),
        '/details'   : (context) =>  const DetailsPage(),
      },
    );
  }
}