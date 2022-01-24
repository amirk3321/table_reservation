import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class WeekDaySingleButtonWidget extends StatefulWidget {
  final VoidCallback? onTap;
  final String? title;
  final bool? isSelected;
  const WeekDaySingleButtonWidget({Key? key, this.onTap, this.title,this.isSelected})
      : super(key: key);

  @override
  _WeekDaySingleButtonWidgetState createState() =>
      _WeekDaySingleButtonWidgetState();
}

class _WeekDaySingleButtonWidgetState extends State<WeekDaySingleButtonWidget> {
  bool _isHover=false;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value){
        setState(() {
          _isHover=value;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _isHover==true|| widget.isSelected==true?colorF7CEA8:Colors.white,
          border: Border.all(color: _isHover==true|| widget.isSelected==true?colorGray7F7F7F:Colors.transparent,width: 1),
        ),
        child: Text("${widget.title}",style: TextStyle(fontSize: 13,color: _isHover==true|| widget.isSelected==true?Colors.black:Colors.black),),
      ),
    );
  }
}
