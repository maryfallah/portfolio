import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mary_portfolio/menuItems.dart';
import 'package:popover/popover.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      
      child: Container(child: Icon(Icons.phone),decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)),color: Color(0xff274c77)),
    height: 50,
    width: 50,),
      onTap: () => showPopover(context: context, bodyBuilder: (context) => MenuItems(),
      width: 30,
      height: 150,
      direction: PopoverDirection.top,
      backgroundColor: Color(0xff6096BA)
      ),
    );
  }
}