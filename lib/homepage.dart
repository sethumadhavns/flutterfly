import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_screen/desktop_layout.dart';
import 'package:responsive_screen/phone_layout.dart';
import 'package:responsive_screen/tablet_layet.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,Constraints){
      if(Constraints.maxWidth>900){
        return Desktop_layout();

      }
      else if(Constraints.maxWidth>600){
        return Tablet_layout();
      }
      else return Phone_layout();
    });
  }
}