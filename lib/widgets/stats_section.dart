import 'package:flutter/material.dart';
import 'stats_card.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Row(
          children: [
            StatsCard(
              title: 'Valoraciones de la tienda',
              value: '4.8',
              icon: Icons.star,
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            StatsCard(
              title: 'Likes de la tienda',
              value: '100',
              icon: Icons.favorite,
            ),
            StatsCard(
              title: 'Likes totales de tus publicaciones',
              value: '780',
              icon: Icons.favorite,
            ),
          ],
        ),
      ],
    );
  }
}
