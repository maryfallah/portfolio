import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class MyIntro extends StatefulWidget {
  const MyIntro({super.key});

  @override
  State<MyIntro> createState() => _MyIntroState();
}

class _MyIntroState extends State<MyIntro> {
  @override
  Widget build(BuildContext context) {
     return SizedBox(
  width: 150.0,
  
  child: DefaultTextStyle(
    style: const TextStyle(
      color: Color(0xffE7ECEF),
      fontSize: 30.0,
      fontFamily: 'Agne',
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText('My name is Maryam. I was born in 2000'),
        TyperAnimatedText('I studied computer engineering'),
        TyperAnimatedText('I was intersted in app development and worked with flutter for more than a year.And now? I want to be a data scientist :)'),
        
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  ),
);
  }
}