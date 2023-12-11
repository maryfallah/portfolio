import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mary_portfolio/showText.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back))),
      body: Container(
        color: Color(0xff274c77),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)

                  ),
                  child: Image(image: AssetImage('assets/me1.jpeg'))
                )
              ],
            ),
            Column(
              children:[
                ShowAboutMeText()
              ]
              
            )
          ],
        ),
        
        
      ),
    );
  }
}


class ShowAboutMeText extends StatefulWidget {
  const ShowAboutMeText({super.key});

  @override
  State<ShowAboutMeText> createState() => _ShowAboutMeTextState();
}

class _ShowAboutMeTextState extends State<ShowAboutMeText> {
  String _fileContents = ''; 
  @override 
void initState() { 
	super.initState(); 
	loadAsset(); 
} 

Future<void> loadAsset() async { 
	String fileText1 = await rootBundle.loadString('assets/aboutMe.txt'); 
	setState(() { 
	_fileContents = fileText1; 
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