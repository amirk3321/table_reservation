import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/week_day_single_button_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/week_day_single_button_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/add_floor_container_button.dart';

import '../main_nav_widget.dart';


class WeekendMainNavBarWidget extends StatefulWidget {
  final OnPageChangeIndexCallBack onPageChangeIndex;

  const WeekendMainNavBarWidget({Key? key, required this.onPageChangeIndex}) : super(key: key);

  @override
  _WeekendMainNavBarWidgetState createState() => _WeekendMainNavBarWidgetState();
}

class _WeekendMainNavBarWidgetState extends State<WeekendMainNavBarWidget> {
  int _navPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        children: [
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 0;
              });
              widget.onPageChangeIndex(0);
            },
            title: "Sunday",
            isSelected: _navPageIndex == 0?true:false,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 1;
              });
              widget.onPageChangeIndex(1);
            },
            title: "Monday",
            isSelected: _navPageIndex == 1?true:false,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 2;
              });
              widget.onPageChangeIndex(2);
            },
            title: "Tuesday",
            isSelected: _navPageIndex == 2?true:false,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 3;
              });
              widget.onPageChangeIndex(3);
            },
            title: "Wednesday",
            isSelected: _navPageIndex == 3?true:false,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 4;
              });
              widget.onPageChangeIndex(4);
            },
            title: "Thursday",
            isSelected: _navPageIndex == 4?true:false,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 5;
              });
              widget.onPageChangeIndex(5);
            },
            title: "Friday",
            isSelected: _navPageIndex == 5?true:false,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 6;
              });
              widget.onPageChangeIndex(6);
            },
            title: "Saturday",
            isSelected: _navPageIndex == 6?true:false,
          ),
        ],
      ),
    );
  }
}


