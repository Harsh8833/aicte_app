import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PDFViewerScreen extends StatelessWidget {
  final String pdfUrl;

  const PDFViewerScreen({
    super.key,
    required this.pdfUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: const PDF(
          defaultPage: 1,
          enableSwipe: true,
          fitEachPage: true,
          fitPolicy: FitPolicy.WIDTH,
        ).cachedFromUrl(pdfUrl),
      ),
    );
  }
}
