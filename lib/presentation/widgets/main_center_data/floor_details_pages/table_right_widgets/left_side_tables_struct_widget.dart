import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/table_right_widgets/table_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/widgets/table_high_order_controllers.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class LeftSideTableStruckWidget extends StatefulWidget {
  final TableHighOrderController tableHighOrderController;

  const LeftSideTableStruckWidget(
      {Key? key, required this.tableHighOrderController})
      : super(key: key);

  @override
  _LeftSideTableStruckWidgetState createState() =>
      _LeftSideTableStruckWidgetState();
}

class _LeftSideTableStruckWidgetState extends State<LeftSideTableStruckWidget> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          _tableSection1(),
          sizeVer(10),
          _tableSection2(),
        ],
      ),
    );
  }

  Widget _tableSection1() {
    return Container(
      height: 240,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: colorF7CEA8.withOpacity(.3),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-1",
                color: _selectedIndex == 1 ? colorB80000.withOpacity(.7) : null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex == 1)
                      _selectedIndex = -1;
                    else
                      _selectedIndex = 1;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-2",
                tableClickListener: () {
                  setState(() {});
                  widget.tableHighOrderController(2);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-3",
                color: _selectedIndex==3?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==3)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=3;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-4",
                color: _selectedIndex==4?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==4)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=4;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-5",
                color: _selectedIndex==5?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==5)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=5;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-8",
                height: 55,
                top: 18,
                left: 15,
                color: _selectedIndex==8?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==8)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=8;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-9",
                height: 55,
                top: 18,
                left: 15,
                color: _selectedIndex==9?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==9)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=9;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-10",
                height: 55,
                top: 18,
                left: 15,
                color: _selectedIndex==10?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==10)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=10;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
            ],
          ),
          TableWidget(
            tableImage: "assets/table8.png",
            title: "T-12",
            height: 100,
            left: 5,
            top: 40,
            color: _selectedIndex==12?colorB80000.withOpacity(.7):null,
            tableClickListener: () {
              setState(() {
                if (_selectedIndex==12)
                  _selectedIndex=-1;
                else
                  _selectedIndex=12;
              });
              widget.tableHighOrderController(_selectedIndex);
            },
          )
        ],
      ),
    );
  }

  Widget _tableSection2() {
    return Container(
      height: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: colorF7CEA8.withOpacity(.3),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-6",
                color: _selectedIndex==6?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==6)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=6;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
              TableWidget(
                tableImage: "assets/table2.png",
                title: "T-7",
                color: _selectedIndex==7?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==7)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=7;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
            ],
          ),
          TableWidget(
            tableImage: "assets/table4.png",
            title: "T-11",
            height: 55,
            top: 18,
            left: 15,
            color: _selectedIndex==11?colorB80000.withOpacity(.7):null,
            tableClickListener: () {
              setState(() {
                if (_selectedIndex==11)
                  _selectedIndex=-1;
                else
                  _selectedIndex=11;
              });
              widget.tableHighOrderController(_selectedIndex);
            },
          ),
          TableWidget(
            tableImage: "assets/table8.png",
            title: "T-13",
            height: 100,
            left: 5,
            top: 40,
            color: _selectedIndex==13?colorB80000.withOpacity(.7):null,
            tableClickListener: () {
              setState(() {
                if (_selectedIndex==13)
                  _selectedIndex=-1;
                else
                  _selectedIndex=13;
              });
              widget.tableHighOrderController(_selectedIndex);
            },
          )
        ],
      ),
    );
  }
}
