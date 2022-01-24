
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

///[NavBrandHeaderWidget] - if you want you can replace with [String] url

class NavBrandHeaderWidget extends StatelessWidget {
  const NavBrandHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 108,
          height: 70,
          child: Image.asset("assets/logo.png"),
        ),
       // Text("$",style: TextStyle(color: color583BD1,fontSize: 18,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
