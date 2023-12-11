import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart' show rootBundle; 



class ShowText extends StatefulWidget { 
@override 
_ShowTextState createState() => _ShowTextState(); 
} 

class _ShowTextState extends State<ShowText> { 
String _fileContents = ''; 

@override 
void initState() { 
	super.initState(); 
	loadAsset(); 
} 

Future<void> loadAsset() async { 
	String fileText = await rootBundle.loadString('assets/readMe.txt'); 
	setState(() { 
	_fileContents = fileText; 
	}); 
} 

@override 
Widget build(BuildContext context) { 
	return Container( 
		padding: EdgeInsets.all(16.0), 
		child: Text(_fileContents), 
		);
} 
} 








