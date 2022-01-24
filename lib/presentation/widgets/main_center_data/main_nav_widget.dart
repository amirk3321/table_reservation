import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/add_floor_container_button.dart';
import 'main_nav_single_button_widget.dart';

typedef OnPageChangeIndexCallBack = Function(int index);

class MainNavBarWidget extends StatefulWidget {
  final OnPageChangeIndexCallBack onPageChangeIndex;

  const MainNavBarWidget({Key? key, required this.onPageChangeIndex}) : super(key: key);

  @override
  _MainNavBarWidgetState createState() => _MainNavBarWidgetState();
}

class _MainNavBarWidgetState extends State<MainNavBarWidget> {
  int _navPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          MainNavSingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 0;
              });
              widget.onPageChangeIndex(0);
            },
            title: "Indoors",
            isSelected: _navPageIndex == 0?true:false,
          ),
          MainNavSingleButtonWidget(
            onTap: (){
              setState(() {
                _navPageIndex = 1;
              });
              widget.onPageChangeIndex(1);
            },
            title: "Terrace",
            isSelected: _navPageIndex == 1?true:false,
          ),
          sizeHor(10),
          AddFloorContainerButtonWidget(
            title: "Add floor",
            iconData: Icons.add,
            onTap: (){},
          )
        ],
      ),
    );
  }
}


