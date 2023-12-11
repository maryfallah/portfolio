import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 50,color: Color(0xff6096BA),child: Icon(Icons.telegram),),
        Container(height: 50,color: Color(0xff6096BA),child: Icon(Icons.link)),
        Container(height: 50,color: Color(0xff6096BA),child: Icon(Icons.email))
      ],
    );
  }
}