import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resources & Tips')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("Reousrces and Tips")
      ),
    );
  }
}
