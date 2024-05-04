import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AddPage extends StatelessWidget {
  final String ResourceName;
  final String Description;
  final String Url;

  AddPage({
    required this.ResourceName,
    required this.Description,
    required this.Url,
  });

  Future<void> openElectronicVersion(BuildContext context) async {
    InAppWebViewController? webView;
    InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        javaScriptEnabled: true,
      ),
    );
    InAppWebView browser = InAppWebView(
      initialUrlRequest: URLRequest(url: Uri.parse(Url)),
      onWebViewCreated: (controller) {
        webView = controller;
      },
      onLoadStop: (controller, url) {},
    );

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(ResourceName),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(child: browser),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          if (webView != null) {
                            await webView!.goBack();
                          }
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (webView != null) {
                            await webView!.goForward();
                          }
                        },
                        child: Icon(Icons.arrow_forward),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (webView != null) {
                            await webView!.reload();
                          }
                        },
                        child: Icon(Icons.refresh),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> openWebsite() async {
    if (await canLaunch(Url)) {
      await launch(Url);
    } else {
      throw 'Не удается открыть сайт';
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
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/img.png'),
      //       fit: BoxFit.cover,
      //   ),
      // ),
      // child: Padding(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Description,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Открыть внутри приложения'),
                onPressed: () => openElectronicVersion(context),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Перейти в браузер'),
                onPressed: openWebsite,
              ),
            ],
          ),
        ),
      // ),
    );
  }
}
