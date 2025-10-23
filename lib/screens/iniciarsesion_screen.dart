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

          // Degradado para mejorar contraste
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black45, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          // Contenido principal
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const LoginHeader(),
                  const SizedBox(height: 40),
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
