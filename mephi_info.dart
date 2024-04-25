import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MephiInfoPage extends StatelessWidget {
  final String ResourceName;
  // final String MainContent;
  final String Url1;
  final String ButtonText1;
  final String TextBelowButton1;
  final String Url2;
  final String ButtonText2;
  final String TextBelowButton2;

  MephiInfoPage({
    required this.ResourceName,
    // required this.MainContent,
    required this.Url1,
    required this.ButtonText1,
    required this.TextBelowButton1,
    required this.Url2,
    required this.ButtonText2,
    required this.TextBelowButton2,
  });

  void _openUrl(BuildContext context, String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Не получилось открыть сайт';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
            ResourceName,
            style: TextStyle(
            color: Colors.black
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   MainContent,
            //   style: TextStyle(fontSize: 16),
            // ),
            // SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _openUrl(context, Url1),
              child: Text(ButtonText1),
            ),
            SizedBox(height: 20),
            Text(
              TextBelowButton1,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _openUrl(context, Url2),
              child: Text(ButtonText2),
            ),
            SizedBox(height: 20),
            Text(
              TextBelowButton2,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
