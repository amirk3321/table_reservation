import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/common/divider_hor_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/add_floor_container_button.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/container_button_no_icon_widget.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

import 'container_button_widget.dart';

class MainTableLeftSideWidget extends StatefulWidget {
  final int tableIndexController;
  const MainTableLeftSideWidget({Key? key,required this.tableIndexController}) : super(key: key);

  @override
  _MainTableLeftSideWidgetState createState() =>
      _MainTableLeftSideWidgetState();
}

class _MainTableLeftSideWidgetState extends State<MainTableLeftSideWidget> {
  bool _isSelectionValue1 = false;
  bool _isSelectionValue2 = false;
  bool _isSelectionValue3 = false;
  bool _isOutOfDoor = false;

  TextEditingController _tableNameEditingController=TextEditingController();
  TextEditingController _minCoversNameEditingController=TextEditingController();
  TextEditingController _maxCoversNameEditingController=TextEditingController();


  @override
  void dispose() {
    _tableNameEditingController.dispose();
    _minCoversNameEditingController.dispose();
    _maxCoversNameEditingController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: widget.tableIndexController==-1?_tableDefaultBody():_selectedTableDetailsWidget(),
    );
  }

  Widget _tableLeftSideWidget(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: widget.tableIndexController==-1?_tableDefaultBody():_selectedTableDetailsWidget(),
    );
  }
  Widget _selectedTableDetailsWidget(){
    return Column(
      children: [
        Text(
          "Table Details",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Text(
              "Table name",
              style: TextStyle(fontSize: 14),
            ),
            sizeHor(5),
            Expanded(
              child: Container(
                height: 30,
                padding: EdgeInsets.only(left: 8,right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 1)),
                child: TextField(
                  controller: _tableNameEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "e.g T-9",
                    contentPadding: EdgeInsets.only(bottom: 18),
                  ),
                ),
              ),
            ),
            sizeHor(10),
          ],
        ),
        sizeVer(20),
        Row(
          children: [
            Text(
              "Min Covers",
              style: TextStyle(fontSize: 14),
            ),
            sizeHor(5),
            Expanded(
              child: Container(
                height: 30,
                padding: EdgeInsets.only(left: 8,right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 1)),
                child: TextField(
                  controller: _minCoversNameEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "e.g 1",
                    contentPadding: EdgeInsets.only(bottom: 18),
                  ),
                ),
              ),
            ),
            sizeHor(10),
            Text(
              "Max Covers",
              style: TextStyle(fontSize: 14),
            ),
            sizeHor(5),
            Expanded(
              child: Container(
                height: 30,
                padding: EdgeInsets.only(left: 8,right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 1)),
                child: TextField(
                  controller: _minCoversNameEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "e.g 4",
                    contentPadding: EdgeInsets.only(bottom: 18),
                  ),
                ),
              ),
            ),
            sizeHor(10),
          ],
        ),
        sizeVer(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
              width: 15,
              child: Checkbox(
                value:_isOutOfDoor,
                onChanged: (value){
                  setState(() {
                    _isOutOfDoor=value!;
                  });
                },
              ),
            ),
            sizeHor(10),
            Text(
              "Out Of Door",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        sizeVer(30),
        ContainerButtonWidget(
          color: colorF7CEA8,
          iconData: AntDesign.delete,
          onClickListener: (){},
          width: 150,
          title: "Delete",
        ),
      ],
    );
  }
  Widget _tableDefaultBody(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Table",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/table2.png"),
            Image.asset("assets/table4.png"),
            Image.asset("assets/table8.png"),
            Image.asset("assets/table4cirlce.png"),
            Image.asset("assets/table1.png"),
            Image.asset("assets/table4ract.png"),
          ],
        ),
        sizeVer(10),
        DividerHorWidget(
          thickness: 1.5,
        ),
        sizeVer(10),
        Text(
          "Objects",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        sizeVer(10),
        _objectsRowWidget(context),
        sizeVer(10),
        DividerHorWidget(
          thickness: 1.5,
        ),
        sizeVer(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Selection",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            AddFloorContainerButtonWidget(
              title: "Add Selection",
              onTap: () {},
              iconData: Icons.add,
            )
          ],
        ),
        sizeVer(10),
        _selectionSingleItem(
            value: _isSelectionValue1,
            color: Colors.deepOrangeAccent.withOpacity(.2),
            title: "Dining Area 1",
            onChanged: (value) {
              setState(() {
                _isSelectionValue1 = value!;
              });
            }),
        sizeVer(10),
        _selectionSingleItem(
            title: "Dining Area 2",
            color: Colors.grey.withOpacity(.2),
            value: _isSelectionValue2,
            onChanged: (value) {
              setState(() {
                _isSelectionValue2 = value!;
              });
            }),
        sizeVer(10),
        _selectionSingleItem(
            title: "Dining Area 3",
            color: Colors.orange.withOpacity(.2),
            value: _isSelectionValue3,
            onChanged: (value) {
              setState(() {
                _isSelectionValue3 = value!;
              });
            }),
        sizeVer(10),
      ],
    );
  }
  _objectsRowWidget(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _objectContainer(h: 130, w: 10, color: colorGray7F7F7F.withOpacity(.4)),
        sizeHor(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _objectContainer(
                h: 10,
                w: MediaQuery.of(context).size.width / 4,
                color: colorGray7F7F7F.withOpacity(.4)),
            sizeVer(5),
            _objectContainer(
                h: 25,
                w: MediaQuery.of(context).size.width / 4,
                color: colorGray7F7F7F.withOpacity(.4)),
            sizeVer(10),
            Row(
              children: [
                _objectContainer(
                    h: 80,
                    w: 40,
                    color: colorGray7F7F7F.withOpacity(.4),
                    radius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                sizeHor(10),
                _objectContainer(
                    h: 80,
                    w: 40,
                    color: colorGray7F7F7F.withOpacity(.4),
                    radius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                sizeHor(10),
                _objectContainer(
                    h: 55, w: 55, color: colorGray7F7F7F.withOpacity(.4)),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _objectContainer(
      {BorderRadiusGeometry? radius,
      required double h,
      required double w,
      required Color color}) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: radius,
      ),
    );
  }

  _selectionSingleItem(
      {required Color color,
      String? title,
      bool? value,
      ValueChanged<bool?>? onChanged}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            height: 40,
            width: 150,
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomRight,
            child: Text(
              "$title",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        sizeHor(10),
        SizedBox(
          height: 10,
          width: 15,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
