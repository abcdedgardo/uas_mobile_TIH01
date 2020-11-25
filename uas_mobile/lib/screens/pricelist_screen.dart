import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PriceListScreen extends StatefulWidget {
  static const String id ='pricelist_screen';
  
  @override
  _PriceListScreenState createState() => _PriceListScreenState();
}

class _PriceListScreenState extends State<PriceListScreen> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cek Harga'),
        backgroundColor: Colors.red[700],
      ),
      body: Center(
        child: WebView(
          initialUrl: 'https://www.hondacengkareng.com/harga-suku-cadang-resmi-motor-honda/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
        ),
      ),
    );
  }
}