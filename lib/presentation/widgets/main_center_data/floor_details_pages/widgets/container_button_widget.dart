import 'package:flutter/material.dart';

class ContainerButtonWidget extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final double? width;
  final Color? color;
  final VoidCallback? onClickListener;
  const ContainerButtonWidget(
      {Key? key, this.width, this.onClickListener,this.color,this.iconData, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClickListener,
      child: Container(
        width: width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            SizedBox(
              width: 10,
            ),
            Text("$title")
          ],
        ),
      ),
    );
  }
}
