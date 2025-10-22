import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'activity_item.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Actividad reciente',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const ActivityItem(
          name: 'Angel Adriel',
          action: 'Le dio Me gusta',
          imageUrl:
              'https://img.freepik.com/vector-premium/imagen-perfil-avatar-hombre-aislada-fondo-imagen-profil-avatar-hombre_1293239-4841.jpg',
        ),
        const ActivityItem(
          name: 'Alexandra Román',
          action: 'Empezó a seguirte',
          imageUrl:
              'https://th.bing.com/th?q=Avatar+Persona+Unisex&w=120&h=120&c=1&rs=1&qlt=70&o=7&cb=1&dpr=1.2&pid=InlineBlock&rm=3&mkt=es-MX&cc=MX&setlang=es&adlt=moderate&t=1&mw=247',
        ),
        const ActivityItem(
          name: 'Angel Adriel',
          action: 'Le dio Me gusta',
          imageUrl:
              'https://img.freepik.com/vector-premium/imagen-perfil-avatar-hombre-aislada-fondo-imagen-profil-avatar-hombre_1293239-4841.jpg',
        ),
        const ActivityItem(
          name: 'Alexandra Román',
          action: 'Empezó a seguirte',
          imageUrl:
              'https://th.bing.com/th?q=Avatar+Persona+Unisex&w=120&h=120&c=1&rs=1&qlt=70&o=7&cb=1&dpr=1.2&pid=InlineBlock&rm=3&mkt=es-MX&cc=MX&setlang=es&adlt=moderate&t=1&mw=247',
        ),
      ],
    );
  }
}
