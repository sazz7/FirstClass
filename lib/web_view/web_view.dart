import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewBar extends StatefulWidget {
  const WebViewBar({super.key});

  @override
  State<WebViewBar> createState() => _WebViewBarState();
}

class _WebViewBarState extends State<WebViewBar> {

  //alertDialog
  void _showBackDialog() {
    showDialog(context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this page?',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .labelLarge,
              ),
              child: const Text('Nevermind'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .labelLarge,
              ),
              child: const Text('Leave'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Web View",
      home: PopScope(
        canPop: false,
        onPopInvoked: (didPop){
        if(didPop){
          return;
        }
         //_showBackDialog();
      },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Web View"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: WebView(
            initialUrl: 'https://www.youtube.com/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _webViewController = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
