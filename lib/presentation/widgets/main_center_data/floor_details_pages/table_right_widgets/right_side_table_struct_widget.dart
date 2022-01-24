import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/table_right_widgets/table_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/widgets/table_high_order_controllers.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class RightSideTableStruckWidget extends StatefulWidget {
  final TableHighOrderController tableHighOrderController;

  const RightSideTableStruckWidget(
      {Key? key, required this.tableHighOrderController})
      : super(key: key);

  @override
  _RightSideTableStruckWidgetState createState() =>
      _RightSideTableStruckWidgetState();
}

class _RightSideTableStruckWidgetState
    extends State<RightSideTableStruckWidget> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent.withOpacity(.1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colorGray7F7F7F.withOpacity(.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "BAR",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                sizeVer(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-1",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 24
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 24)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 24;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-2",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 25
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 25)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 25;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-3",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 26
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 26)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 26;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-4",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 27
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 27)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 27;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-5",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 28
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 28)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 28;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-6",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 29
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 29)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 29;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-7",
                      fontSize: 13,
                      height: 28,
                      color: _selectedIndex == 30
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 30)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 30;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                    TableWidget(
                      tableImage: "assets/table1.png",
                      title: "B-8",
                      fontSize: 12,
                      height: 29,
                      color: _selectedIndex == 31
                          ? colorB80000.withOpacity(.7)
                          : null,
                      tableClickListener: () {
                        setState(() {
                          if (_selectedIndex == 31)
                            _selectedIndex = -1;
                          else
                            _selectedIndex = 31;
                        });
                        widget.tableHighOrderController(_selectedIndex);
                      },
                    ),
                    sizeVer(5),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tableSection2() {
    return Container(
      height: 210,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tableWithBg(
                tableImage: "assets/table2.png",
                title: "T-14",
                left: 1,
                color:
                    _selectedIndex == 14 ? colorB80000.withOpacity(.7) : null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex == 14)
                      _selectedIndex = -1;
                    else
                      _selectedIndex = 14;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: colorGray7F7F7F.withOpacity(.4),
                    borderRadius: BorderRadius.circular(10)),
              ),
              _tableWithBg(
                tableImage: "assets/table2.png",
                title: "T-15",
                left: 1,
                color: _selectedIndex==15?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==15)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=15;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              sizeVer(5),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-16",
                height: 55,
                top: 18,
                left: 10,
                color: _selectedIndex==16?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==16)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=16;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-17",
                height: 55,
                top: 18,
                left: 10,
                color: _selectedIndex==17?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==17)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=17;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-18",
                height: 55,
                top: 18,
                left: 10,
                color: _selectedIndex==18?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==18)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=18;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 55,
                width: 55,
              ),
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-19",
                height: 55,
                top: 18,
                left: 10,
                color: _selectedIndex==19?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==19)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=19;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
              TableWidget(
                tableImage: "assets/table4.png",
                title: "T-20",
                height: 55,
                top: 18,
                left: 10,
                color: _selectedIndex==20?colorB80000.withOpacity(.7):null,
                tableClickListener: () {
                  setState(() {
                    if (_selectedIndex==20)
                      _selectedIndex=-1;
                    else
                      _selectedIndex=20;
                  });
                  widget.tableHighOrderController(_selectedIndex);
                },
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: colorF7CEA8.withOpacity(.4),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TableWidget(
                  tableImage: "assets/table4ract.png",
                  title: "T-21",
                  height: 55,
                  top: 18,
                  left: 5,
                  color: _selectedIndex==21?colorB80000.withOpacity(.7):null,
                  tableClickListener: () {
                    setState(() {
                      if (_selectedIndex==21)
                        _selectedIndex=-1;
                      else
                        _selectedIndex=21;
                    });
                    widget.tableHighOrderController(_selectedIndex);
                  },
                ),
                TableWidget(
                  tableImage: "assets/table4ract.png",
                  title: "T-22",
                  height: 55,
                  top: 18,
                  left: 5,
                  color: _selectedIndex==22?colorB80000.withOpacity(.7):null,
                  tableClickListener: () {
                    setState(() {
                      if (_selectedIndex==22)
                        _selectedIndex=-1;
                      else
                        _selectedIndex=22;
                    });
                    widget.tableHighOrderController(_selectedIndex);
                  },
                ),
                TableWidget(
                  tableImage: "assets/table4ract.png",
                  title: "T-13",
                  height: 55,
                  top: 18,
                  left: 5,
                  color: _selectedIndex==23?colorB80000.withOpacity(.7):null,
                  tableClickListener: () {
                    setState(() {
                      if (_selectedIndex==23)
                        _selectedIndex=-1;
                      else
                        _selectedIndex=23;
                    });
                    widget.tableHighOrderController(_selectedIndex);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tableWithBg({
    double? left,
    double? top,
    double? height,
    double? fontSize,
    Color? color,
    required VoidCallback tableClickListener,
    required String tableImage,
    required String title,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 12, right: 10, bottom: 10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
      child: TableWidget(
        tableClickListener: tableClickListener,
        tableImage: tableImage,
        title: title,
        fontSize: fontSize,
        left: left,
        top: top,
        height: height,
      ),
    );
  }
}
