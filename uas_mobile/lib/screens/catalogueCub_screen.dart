import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class CatalogueCub extends StatefulWidget {
  @override
  _CatalogueCubState createState() => _CatalogueCubState();
}
class _CatalogueCubState extends State<CatalogueCub> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/pdf/Revo.pdf');
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