import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl/intl.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';

class CheckboxButtonColumnWidget extends StatefulWidget {
  final bool? value;
  final bool? valueApplyUntil;
  final ValueChanged<bool?>? onChanged;
  final ValueChanged<bool?>? onChangedApplyUntil;
  final String? title;

  const CheckboxButtonColumnWidget(
      {Key? key,
      this.title,
      this.value,
      this.valueApplyUntil,
      this.onChanged,
      this.onChangedApplyUntil})
      : super(key: key);

  @override
  _CheckboxButtonColumnWidgetState createState() =>
      _CheckboxButtonColumnWidgetState();
}

class _CheckboxButtonColumnWidgetState
    extends State<CheckboxButtonColumnWidget> {
  DateTime _selectedDate = DateTime.now();
  TextEditingController _timeController = TextEditingController();

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
              width: 15,
              child: Checkbox(
                value: widget.value!,
                onChanged: widget.onChanged,
              ),
            ),
            sizeHor(10),
            Text(
              "${widget.title}",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        sizeVer(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
              width: 15,
              child: Checkbox(
                value: widget.valueApplyUntil!,
                onChanged: widget.onChangedApplyUntil,
              ),
            ),
            sizeHor(10),
            Row(
              children: [
                Text(
                  "Apply until",
                  style: TextStyle(fontSize: 12),
                ),
                sizeHor(5),
                Container(
                  width: 130,
                  height: 30,
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: TextField(
                    controller: _timeController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "1/2/2022",
                        contentPadding: EdgeInsets.only(bottom: 4),
                        suffixIcon: InkWell(
                            onTap: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2025),
                              );
                              if (picked != null && picked != _selectedDate)
                                setState(() {
                                  _selectedDate = picked;
                                  _timeController.value = TextEditingValue(
                                      text: DateFormat("dd/MM/yyy")
                                          .format(_selectedDate));
                                });
                            },
                            child: Icon(
                              AntDesign.calendar,
                              size: 16,
                            ))),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
