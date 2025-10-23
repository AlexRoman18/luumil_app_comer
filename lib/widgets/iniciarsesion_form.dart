import 'package:flutter/material.dart';
import 'package:luumil_app_comer/screens/dashboard_screen.dart';
import 'package:luumil_app_comer/widgets/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Panel blanco redondeado
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -10),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomTextField(
            hint: 'Correo electrónico',
            icon: Icons.email,
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            hint: 'Contraseña',
            icon: Icons.lock,
            obscure: true,
          ),

          const SizedBox(height: 2),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '¿Olvidó su contraseña?',
                style: TextStyle(color: Colors.black54, fontSize: 13),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Botón principal
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const DashboardScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF007BFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 18),

          // Botón Google
          SizedBox(
            width: double.infinity,
            height: 50,
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
                  borderRadius: BorderRadius.circular(25),
                ),
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Texto final
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '¿Ya tiene cuenta?',
                style: TextStyle(fontSize: 14),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Regístrese',
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
    );
  }
}
