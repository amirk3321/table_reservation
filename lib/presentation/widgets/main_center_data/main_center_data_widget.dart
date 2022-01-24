import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:table_rsv/presentation/widgets/common/divider_hor_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weekend_schedule_row_widdget.dart';

import 'main_nav_widget.dart';

class MainCenterDataWidget extends StatefulWidget {
  const MainCenterDataWidget({Key? key}) : super(key: key);

  @override
  _MainCenterDataWidgetState createState() => _MainCenterDataWidgetState();
}

class _MainCenterDataWidgetState extends State<MainCenterDataWidget> {
  int _subNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          MainNavBarWidget(
            onPageChangeIndex: (int index) {
              setState(() {
                _subNavIndex = index;
              });
            },
          ),
          WeekendScheduleRowWidget(),
        ],
      ),
    );
  }

  _mainDataHeaderWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Omega",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text("45.77.103.173"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "In progress",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Refresh",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesome.refresh,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
