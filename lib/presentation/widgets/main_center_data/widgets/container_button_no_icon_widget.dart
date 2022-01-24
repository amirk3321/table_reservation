import 'package:flutter/material.dart';

class ContainerButtonNoIconWidget extends StatelessWidget {
  final String? title;
  final double? width;
  final Color? color;
  final bool isEnableBoxShadow;
  final VoidCallback? onClickListener;

  const ContainerButtonNoIconWidget({
    Key? key,
    this.width,
    this.title,
    this.color,
    this.isEnableBoxShadow=false,
    this.onClickListener
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClickListener,
      child: Container(
        width: width,
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow:isEnableBoxShadow==false?[]:[
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(
                1.5,1.5
              )
            )
          ],
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Text("$title"),
      ),
    );
  }
}
