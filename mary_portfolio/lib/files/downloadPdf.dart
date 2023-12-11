import 'dart:html' as html;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WorkPdf extends StatelessWidget {
  Future<void> _downloadFile() async {
    final ByteData data = await rootBundle.load('assets/story_board.pdf');
    final Uint8List bytes = data.buffer.asUint8List();

    final html.Blob blob = html.Blob([Uint8List.fromList(bytes)], 'application/pdf');
    final String url = html.Url.createObjectUrlFromBlob(blob);

    final html.AnchorElement anchor = html.AnchorElement(href: url)
      ..target = 'webbrowser'
      ..download = 'story_board.pdf' // Specify the filename for the download
      ..click();

    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _downloadFile,
            child: Text('Download PDF'),
          ),
        ],
      ),
    );
  }
}
