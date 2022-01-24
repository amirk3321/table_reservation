import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class MainNavSingleButtonWidget extends StatefulWidget {
  final VoidCallback? onTap;
  final String? title;
  final bool? isSelected;

  const MainNavSingleButtonWidget(
      {Key? key, this.onTap, this.title, this.isSelected})
      : super(key: key);

  @override
  _MainNavSingleButtonWidgetState createState() =>
      _MainNavSingleButtonWidgetState();
}

class _MainNavSingleButtonWidgetState extends State<MainNavSingleButtonWidget> {
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
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: _isHover == true || widget.isSelected == true
                    ? Colors.green
                    : colorGray7F7F7F,
                width: 2
            )
             ),
        ),
        child: Text(
          "${widget.title}",
          style: TextStyle(
              color: _isHover == true || widget.isSelected == true
                  ? colorGray7F7F7F
                  : Colors.black),
        ),
      ),
    );
  }
}
