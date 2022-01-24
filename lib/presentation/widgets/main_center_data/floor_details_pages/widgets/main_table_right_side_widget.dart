import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/table_right_widgets/left_side_tables_struct_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/table_right_widgets/right_side_table_struct_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/widgets/table_high_order_controllers.dart';

class MainTableRightSideWidget extends StatefulWidget {
  final TableHighOrderController tableHighOrderController;
  const MainTableRightSideWidget({Key? key, required this.tableHighOrderController}) : super(key: key);

  @override
  _MainTableRightSideWidgetState createState() => _MainTableRightSideWidgetState();
}

class _MainTableRightSideWidgetState extends State<MainTableRightSideWidget> {

  int _tableIndexController=-1;




  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: LeftSideTableStruckWidget(
          tableHighOrderController: (int index) {
            setState(() {
              _tableIndexController=index;
            });
            widget.tableHighOrderController(_tableIndexController);
          },
        )),
        Expanded(
            child: RightSideTableStruckWidget(
          tableHighOrderController: (int index) {
            setState(() {
              _tableIndexController=index;
            });
            widget.tableHighOrderController(_tableIndexController);
          },
        )),
      ],
    );
  }
}
