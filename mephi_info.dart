import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'add_page.dart';

class MephiInfoPage extends StatelessWidget {
  final String ResourceName;
  final String Url1;
  final String ButtonText1;
  final String TextBelowButton1;
  final String Url2;
  final String ButtonText2;
  final String TextBelowButton2;

  MephiInfoPage({
    required this.ResourceName,
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
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              TextBelowButton1,
              style: TextStyle(fontSize: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewPage(
                          url: Url1,
                          resourceName: ResourceName,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                  ),
                  child: Text(
                    ButtonText1 + ' (открыть в приложении)',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _openUrl(context, Url1),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                  ),
                  child: Text(
                    ButtonText1 + ' (открыть в браузере)',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              TextBelowButton2,
              style: TextStyle(fontSize: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewPage(
                          url: Url2,
                          resourceName: ResourceName,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                  ),
                  child: Text(
                    ButtonText2 + ' (открыть в приложении)',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _openUrl(context, Url2),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                  ),
                  child: Text(
                    ButtonText2 + ' (открыть в браузере)',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
