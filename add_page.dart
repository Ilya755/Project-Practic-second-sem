import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  final String resourceName;
  final String description;
  final String url;

  AddPage({
    required this.resourceName,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resourceName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              url,
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}