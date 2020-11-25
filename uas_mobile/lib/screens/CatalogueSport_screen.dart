import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class CatalogueSport extends StatefulWidget {
  @override
  _CatalogueSportState createState() => _CatalogueSportState();
}

class _CatalogueSportState extends State<CatalogueSport> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/pdf/CBR150R.pdf');
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        centerTitle: true,
        title: const Text('PDF Viewer'),
      ),
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(document: document)),
    );
  }
}