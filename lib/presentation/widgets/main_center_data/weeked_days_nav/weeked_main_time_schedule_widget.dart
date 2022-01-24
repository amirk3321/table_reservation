import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/week_day_single_button_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/week_day_single_button_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/add_floor_container_button.dart';

import '../main_nav_widget.dart';


class WeekendMainTimeScheduleBarWidget extends StatefulWidget {
  final OnPageChangeIndexCallBack onPageChangeIndex;

  const WeekendMainTimeScheduleBarWidget({Key? key, required this.onPageChangeIndex}) : super(key: key);

  @override
  _WeekendMainTimeScheduleBarWidgetState createState() => _WeekendMainTimeScheduleBarWidgetState();
}

class _WeekendMainTimeScheduleBarWidgetState extends State<WeekendMainTimeScheduleBarWidget> {
  int _navPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 0;
              });
              widget.onPageChangeIndex(0);
            },
            title: "12:00 PM\n02:00 PM",
            isSelected: true,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 1;
              });
              widget.onPageChangeIndex(1);
            },
              title: "02:00 PM\n04:00 PM",
              isSelected: true,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 2;
              });
              widget.onPageChangeIndex(2);
            },
            title: "04:00 PM\n06:00 PM",
            isSelected: true,
          ),

          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 3;
              });
              widget.onPageChangeIndex(3);
            },
            title: "06:00 PM\n08:00 PM",
            isSelected: true,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 4;
              });
              widget.onPageChangeIndex(4);
            },
            title: "08:00 PM\n12:00 PM",
            isSelected: true,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 5;
              });
              widget.onPageChangeIndex(5);
            },
            title: "10:00 PM\n12:00 AM",
            isSelected: true,
          ),
          sizeHor(5),
          WeekDaySingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 6;
              });
              widget.onPageChangeIndex(6);
            },
            title: "12:00 AM\n02:00 AM",
            isSelected: true,
          ),
        ],
      ),
    );
  }
}


