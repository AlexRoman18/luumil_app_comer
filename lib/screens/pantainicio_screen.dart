import 'package:flutter/material.dart';
import 'package:luumil_app_comer/widgets/side_menu.dart';
import '../widgets/header_section.dart';
import '../widgets/stats_section.dart';
import '../widgets/activity_section.dart';
import 'package:luumil_app_comer/screens/perfil_screen.dart'; //

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      drawer: const SideMenu(),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          const SizedBox(width: 10),
          const Icon(Icons.notifications_none, color: Colors.black),
          const SizedBox(width: 10),
        ],
      ),

      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(title: '¡Bienvenido, Tienda!'),
            SizedBox(height: 20),
            StatsSection(),
            SizedBox(height: 30),
            ActivitySection(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
