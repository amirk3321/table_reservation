import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class NavButtonWidget extends StatefulWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final bool? isSelected;
  final String? title;
  final int? index;
  const NavButtonWidget(
      {Key? key, this.title, required this.icon,this.index, this.onTap, this.isSelected})
      : super(key: key);

  @override
  _NavButtonWidgetState createState() => _NavButtonWidgetState();
}

class _NavButtonWidgetState extends State<NavButtonWidget> {
  ///isHover [bool] field manage the hover effect of navigation
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sizeHor(20),
        Container(
          height: 25,
          width: 25,
          child: widget.index==0?Image.asset("assets/table.png"):Text(""),
        ),
        sizeHor(20),
        InkWell(
          onTap: widget.onTap,
          onHover: (value) {
            setState(() {
              _isHover = value;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _isHover == true || widget.isSelected == true
                  ? colorGray7F7F7F.withOpacity(.1)
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                widget.isSelected==true?Container(
                  height: 45,
                  width: 3.5,
                  color: primaryColor,
                ):Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      widget.icon,
                      size: 20,
                      color: _isHover == true || widget.isSelected == true
                          ?primaryColor.withOpacity(.6)
                          : colorGray7F7F7F.withOpacity(.6),
                    ),
                  ),
                ),
                widget.isSelected==true?sizeHor(15):sizeHor(0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("${widget.title}",style: TextStyle(
                    color:_isHover == true || widget.isSelected == true
                        ?primaryColor
                        : Colors.black.withOpacity(.6) ,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
