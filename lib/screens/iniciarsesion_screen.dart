import 'package:flutter/material.dart';
import 'package:luumil_app_comer/widgets/iniciarsesion_form.dart';
import 'package:luumil_app_comer/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo con imagen
          Image.asset('assets/icons/interfaz.png', fit: BoxFit.cover),

          // Degradado para contraste
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black45, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          // Cabecera centrada
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: const LoginHeader(),
              ),
            ),
          ),

          // Panel blanco redondeado pegado abajo
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: LoginForm(
              heightFactor: 0.55, // Puedes ajustar a gusto
            ),
          ),
        ],
      ),
    );
  }
}
