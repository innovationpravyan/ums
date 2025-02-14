import 'package:flutter/material.dart';
import 'package:ums/widgets/sidebar.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  bool showText = true;

  void toggleTextVisibility() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: showText ? 200 : 100,
          child: Row(
            children: [
              Icon(Icons.flutter_dash),
              SizedBox(width: 8),
              if (showText) Text('Pravyan'),
              Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    icon: showText?Icon(Icons.toggle_on):Icon(Icons.toggle_off),
                    onPressed: toggleTextVisibility,
                  ),
                ),
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          Sidebar(showText: showText),
          Expanded(
            child: SizedBox(
              child: const Center(
                child: Text('Welcome to the Admin Dashboard!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
