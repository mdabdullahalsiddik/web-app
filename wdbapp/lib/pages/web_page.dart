

import 'package:flutter/material.dart';
import 'package:wdbapp/static/all_color.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// ignore: must_be_immutable
class WebViewPage extends StatefulWidget {
  String url;
  String text;
  WebViewPage({
    super.key,
    required this.url,
    required this.text,
  });

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColor.appbarColor,
        title: Text(widget.text),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
      ),
    );
  }
}
