import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class DividerHorWidget extends StatelessWidget {
  final double? thickness;
  const DividerHorWidget({Key? key,this.thickness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: colorGray7F7F7F.withOpacity(.5),
      height: thickness==null?2.5:thickness,
    );
  }
}
