import 'package:flutter/material.dart';
import 'package:mary_portfolio/files/downloadResume.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: DownloadResume()),
    );
  }
}