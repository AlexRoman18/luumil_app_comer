import 'package:flutter/material.dart';
import 'package:luumil_app_comer/screens/iniciarsesion_screen.dart';
import 'package:luumil_app_comer/widgets/custom_text_field.dart';
import 'package:luumil_app_comer/widgets/cameraButton.dart';

class RegisterForm extends StatelessWidget {
  final double heightFactor; // 👈 parámetro para ajustar la altura

  const RegisterForm({
    super.key,
    this.heightFactor = 0.7, // 70% de la pantalla por defecto
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: size.height * heightFactor,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 12),
                const CustomTextField(hint: 'Nombre', icon: Icons.person),
                const SizedBox(height: 14),
                const CustomTextField(
                  hint: 'Correo electrónico',
                  icon: Icons.email,
                ),
                const SizedBox(height: 14),
                const CustomTextField(
                  hint: 'Contraseña',
                  icon: Icons.lock,
                  obscure: true,
                ),
                const SizedBox(height: 14),
                const CustomTextField(
                  hint: 'Comunidad',
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 20),

                // 🔹 Sección de imágenes
                const Text(
                  'Por favor, adjunte mínimo 3 imágenes que evidencien la existencia de sus ventas',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const CameraButton(), // Botón de cámara
                const SizedBox(height: 20),

                // Botón principal
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF007BFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Enviar solicitud',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Botón Google
                SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/buscar.png',
                      width: 22,
                      height: 22,
                    ),
                    label: const Text(
                      'Continuar con Google',
                      style: TextStyle(fontSize: 15),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black26),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      foregroundColor: Colors.black87,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Texto inferior
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '¿Ya tiene cuenta?',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      ),
                      child: const Text(
                        'Inicie sesión',
                        style: TextStyle(
                          color: Color(0xFF007BFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
