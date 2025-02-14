import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final bool showText;

  const Sidebar({super.key, required this.showText});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: showText ? 200 : 60,
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildMenuItem(Icons.home, "Home"),
                _buildMenuItem(Icons.note, "View"),
                _buildMenuItem(Icons.notifications, "Notification"),
              ],
            ),
          ),
          _buildMenuItem(Icons.settings, "Setting"),
          _buildMenuItem(Icons.person, "User"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      leading: Icon(icon, color: Colors.white),
      title: showText
          ? Text(label, style: TextStyle(color: Colors.white))
          : null,
    );
  }
}
