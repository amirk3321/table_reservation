import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class AddFloorContainerButtonWidget extends StatefulWidget {
  final VoidCallback? onTap;
  final String? title;
  final bool? isSelected;
  final IconData? iconData;

  const AddFloorContainerButtonWidget(
      {Key? key, this.title, this.iconData, this.onTap, this.isSelected})
      : super(key: key);

  @override
  _AddFloorContainerButtonWidgetState createState() =>
      _AddFloorContainerButtonWidgetState();
}

class _AddFloorContainerButtonWidgetState
    extends State<AddFloorContainerButtonWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Icon(
              widget.iconData,
              color: Colors.white,
            ),
          ),
          sizeHor(10),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                // border: Border.all(
                //     color: _isHover == true || widget.isSelected == true
                //         ? Colors.green
                //         : colorGray7F7F7F,
                //     width: 1
                // ),
                ),
            child: Text(
              "${widget.title}",
              style: TextStyle(
                  color: _isHover == true || widget.isSelected == true
                      ? colorGray7F7F7F
                      : Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
