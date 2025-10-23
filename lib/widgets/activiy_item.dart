import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  final String name;
  final String action;
  final String imageUrl;

  const ActivityItem({
    super.key,
    required this.name,
    required this.action,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF8F2FF),
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(action),
        trailing: const Icon(Icons.settings_outlined),
      ),
    );
  }
}
