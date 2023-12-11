// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mary_portfolio/files/downloadPdf.dart';
import 'package:mary_portfolio/pages/personal.dart';
import 'package:mary_portfolio/showText.dart';



class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back))),
      body: Container(
        color: Color(0xff274c77),
        width: 1600,
        height: 1400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExplanationOfMithra(),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('This is a story board of the project.\n Unfortunately, since the project has been stoped i no longer have access to an apk version of it that works fine',style:TextStyle(color: Color(0xffE7ECEF),fontSize: 17) ,),
            ),
            Center(child: Container(child: WorkPdf())),
            Container(child: ShowAboutMeText(),)
            ],
          
        ),
      ),
    );
  }
}

Widget ExplanationOfMithra() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Last year i've been working on a project called Mithra.\nIt was a monitoring app in order to manage miners machine and operate them remotely, without a human operator.\nIt was such a great exprience and i learned so much. here you can find more about it",style: TextStyle(color: Color(0xffE7ECEF),fontSize: 20),),
    ));   
}
