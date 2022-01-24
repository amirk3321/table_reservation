import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class TableWidget extends StatelessWidget {
  final double? left;
  final double? top;
  final double? height;
  final double? fontSize;
  final String tableImage;
  final String title;
  final Color? color;
  final VoidCallback tableClickListener;

  const TableWidget(
      {Key? key,
      this.top,
      this.left,
      this.color,
      this.height,
      this.fontSize,
      required this.tableClickListener,
      required this.tableImage,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tableClickListener,
      child: Container(
        height: height == null ? 40 : height,
        child: Stack(
          children: [
            Container(
              height: height,
              child: Image.asset(
                "$tableImage",
                fit: BoxFit.fill,
                color: color==null?null:color,
              ),
            ),
            Positioned(
              top: top == null ? 6 : top,
              left: left == null ? 5 : left,
              child: Text(
                "$title",
                style: TextStyle(
                    fontSize: fontSize == null ? 16 : fontSize,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
