import 'package:flutter/material.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/stats_section.dart';
import '../widgets/activity_list.dart';
import '../navigation/bottom_nav_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(), // Opcional: menú lateral
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.person_outline, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardHeader(),
            SizedBox(height: 20),
            StatsSection(),
            SizedBox(height: 20),
            ActivityList(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
