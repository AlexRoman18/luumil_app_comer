import 'package:flutter/material.dart';
import 'package:luumil_app_comer/widgets/register_forms.dart';
import 'package:luumil_app_comer/widgets/register_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo con imagen
          Image.asset('assets/icons/interfaz.png', fit: BoxFit.cover),

          // Capa semitransparente para contraste
          Container(color: Colors.black.withOpacity(0.25)),

          // Contenido principal
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 16),

                    // Encabezado (logo y título)
                    RegisterHeader(),
                    SizedBox(height: 32),

                    // Formulario de registro
                    RegisterForm(),

                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
