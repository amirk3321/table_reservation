import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'nav_brand_header_widget.dart';
import 'nav_button_widget.dart';

typedef OnPageChangeIndexCallBack = Function(int index);

class VerticalNavigationWidget extends StatefulWidget {
  final OnPageChangeIndexCallBack onPageChangeIndexCallBack;

  const VerticalNavigationWidget(
      {Key? key, required this.onPageChangeIndexCallBack})
      : super(key: key);

  @override
  _VerticalNavigationWidgetState createState() =>
      _VerticalNavigationWidgetState();
}

class _VerticalNavigationWidgetState extends State<VerticalNavigationWidget> {
  int _buttonIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            offset: Offset(0.0, 2.2),
            blurRadius: 2,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          NavButtonWidget(
              title: "Dashboard",
              index: 0,
              isSelected: _buttonIndex == 1 ? true : false,
              icon: Icons.arrow_forward_ios,
              onTap: () {
                setState(() {
                  _buttonIndex = 1;
                });
                widget.onPageChangeIndexCallBack(1);
              }),
          NavButtonWidget(
            title: "Guestbook",
            isSelected: _buttonIndex == 2 ? true : false,
            icon: Icons.arrow_forward_ios,
            onTap: () {
              setState(() {
                _buttonIndex = 2;
              });
              widget.onPageChangeIndexCallBack(2);
            },
          ),
          NavButtonWidget(
            title: "Reservations",
              isSelected: _buttonIndex == 3 ? true : false,
              icon: Icons.arrow_forward_ios,
              onTap: () {
                setState(() {
                  _buttonIndex = 3;
                });
                widget.onPageChangeIndexCallBack(3);
              }),
          NavButtonWidget(
             title: "Settings",
              isSelected: _buttonIndex == 4 ? true : false,
              icon: Icons.arrow_forward_ios,
              onTap: () {
                setState(() {
                  _buttonIndex = 4;
                });
                widget.onPageChangeIndexCallBack(4);
              }),
        ],
      ),
    );
  }
}
