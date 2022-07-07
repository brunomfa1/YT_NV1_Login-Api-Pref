import 'package:flutter/material.dart';
import 'package:yt_splash_login/services/prefs_services.dart';

 class SplashPage extends StatefulWidget {
   const SplashPage({ Key? key }) : super(key: key);
 
   @override
   State<SplashPage> createState() => _SplashPageState();
 }
 
 class _SplashPageState extends State<SplashPage> {
  
  
  @override
  void initState() {
    
    
    Future.wait([PrefdServices.isAuth(), 
    Future.delayed(const Duration(seconds: 3))]).then((value) =>  value[0] 
    ? Navigator.of(context).pushReplacementNamed('/home')
    : Navigator.of(context).pushReplacementNamed('/login'));
    
    //NAO DANDO A OPÇÃO DE VOLTAR PARA A PAGINA Splash
    //CHAMANDO A PAGINA DE LOGIN EM CIMA DE Splash
    //RESULTAOD: VAI RODAR 3 SEGUNDOS E VAI IR PARA LOGIN PAGE
    super.initState();
    
    //Future.delayed(const Duration(seconds: 2)).then((_) => Navigator.of(context).pushReplacementNamed('/login'),); 
  }
   @override
   Widget build(BuildContext context) {
     return Container(
        color: Colors.green.shade700,
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white54,
          ),
       ),
     );
   }
 }