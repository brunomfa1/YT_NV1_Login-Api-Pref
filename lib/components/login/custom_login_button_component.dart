import 'package:flutter/material.dart';
import 'package:yt_splash_login/controller/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({ Key? key,  required this.loginController }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
             valueListenable: loginController.inLoeader,
              builder: (context, inLoeader,__) =>
                 inLoeader 
                 ? const CircularProgressIndicator(): 
                 ElevatedButton(
                  onPressed: (){
                    loginController.auth().then((resultado){
                      if (resultado == true) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:  Text('Login Inválido'),
                            duration:  Duration(seconds: 3),
                          )
                        );
                      }
                    });
                  },              
                  child: const Text('Login')
                )
    );
  }
}