import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_html/html.dart' as uh;

class DownloadResume extends StatelessWidget {
  Future<void> _downloadFile() async {
    final ByteData data = await rootBundle.load('assets/myResume.pdf');
    final Uint8List bytes = data.buffer.asUint8List();

    final uh.Blob blob = uh.Blob([bytes]);
    final String url = uh.Url.createObjectUrlFromBlob(blob);

    final uh.AnchorElement anchor = uh.AnchorElement(href: url)
      ..target = 'webbrowser'
      ..download = 'myResume.pdf'; // Specify the filename for the download
    uh.document.body!.children.add(anchor);
    anchor.click();
    uh.document.body!.children.remove(anchor);

    uh.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Click the button to download the PDF file'),
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
