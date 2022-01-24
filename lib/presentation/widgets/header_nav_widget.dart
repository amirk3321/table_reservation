
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'common/commons.dart';

class HeaderNavWidget extends StatelessWidget {
  const HeaderNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
           child: Text("App Logo"),
         ),
          Row(
            children: [
              Icon(Icons.notifications, color: Colors.grey,),
              sizeHor(10),
              Icon(FontAwesome.user_circle_o, color: Colors.black,),
              sizeHor(10),
              Icon(MaterialIcons.menu, color: Colors.black,),
            ],
          )
        ],
      ),
    );
  }
}
