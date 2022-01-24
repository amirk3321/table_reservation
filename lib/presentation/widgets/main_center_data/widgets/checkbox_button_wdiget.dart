import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';

class CheckboxButtonWidget extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final String? title;

  const CheckboxButtonWidget({Key? key, this.title, this.value, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 10,
          width: 15,
          child: Checkbox(
            value: value!,
            onChanged: onChanged,
          ),
        ),
        sizeHor(10),
        Text("$title",style: TextStyle(fontSize: 12),),
      ],
    );
  }
}
