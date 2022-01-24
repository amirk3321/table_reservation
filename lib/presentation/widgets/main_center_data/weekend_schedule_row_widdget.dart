

import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/common/divider_hor_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/widgets/floor_details_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/weeked_main_nav_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/weeked_main_time_schedule_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/checkbox_button_column_wdiget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/checkbox_button_wdiget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/weeked_days_nav/week_day_single_button_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/container_button_no_icon_widget.dart';

import 'floor_details_pages/main_table_page_widget.dart';

class WeekendScheduleRowWidget extends StatefulWidget {
  const WeekendScheduleRowWidget({Key? key}) : super(key: key);

  @override
  _WeekendScheduleRowWidgetState createState() => _WeekendScheduleRowWidgetState();
}

class _WeekendScheduleRowWidgetState extends State<WeekendScheduleRowWidget> {

  bool _isApplyThisLayoutToAllTimeslots=false;
  bool _isApplyToSelectedDatesAndTimeslots=false;
  bool _isApplyUntil=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _scheduleRowWidgetData(),
          sizeVer(10),
          DividerHorWidget(thickness: 0.5,),
          sizeVer(10),
          FloorDetailsWidget(),
          sizeVer(10),

        ],
      ),
    );
  }

  Widget _scheduleRowWidgetData(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CheckboxButtonWidget(
                  title: "Apply this layout to all timeslots",
                  value: _isApplyThisLayoutToAllTimeslots,
                  onChanged: (value){
                    setState(() {
                      _isApplyThisLayoutToAllTimeslots=value!;
                    });
                  },
                ),
                sizeHor(35),
                WeekendMainNavBarWidget(
                  onPageChangeIndex: (index){},
                )
              ],
            ),
            Row(
              children: [
                CheckboxButtonColumnWidget(
                  valueApplyUntil: _isApplyUntil,
                  onChangedApplyUntil: (value){
                    setState(() {
                      _isApplyUntil=value!;
                    });
                  },
                  title: "Apply to selected dates & timeslots",
                  value: _isApplyToSelectedDatesAndTimeslots,
                  onChanged: (value){
                    setState(() {
                      _isApplyToSelectedDatesAndTimeslots=value!;
                    });
                  },
                ),
                sizeHor(10),
                WeekendMainTimeScheduleBarWidget(
                  onPageChangeIndex: (index){},
                )
              ],
            ),

          ],
        ),
        ContainerButtonNoIconWidget(
          color: Colors.deepOrangeAccent.withOpacity(.5),
          title: "Save",
          width: MediaQuery.of(context).size.width/12,
          isEnableBoxShadow: false,
          onClickListener: (){},
        ),
      ],
    );
  }
}
