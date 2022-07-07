import 'package:flutter/material.dart';
import 'package:yt_splash_login/components/login/custom_login_button_component.dart';
import 'package:yt_splash_login/controller/login_controller.dart';
import 'package:yt_splash_login/widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {

  
  final LoginController _controller  = LoginController(); 
  

  LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            //ICONE DE LOGIN
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
            //CAMPO LOGIN
            // --> WIDGETS            
            CustomTextFieldWidget(onChanged: _controller.setLogin , label: 'Login'),
            //CAMPO SENHA 
            // --> WIDGETS             
            CustomTextFieldWidget(onChanged: _controller.setSenha , label: 'Senha', obscureText: true),
            const SizedBox(height: 15),
            //BOTÃO LOGIN 
            //// --> COMPONENTS           
            CustomLoginButtonComponent(loginController: _controller),
          ],
        ),
      ),
    );
  }
}