

import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/main_center_data_widget.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MainCenterDataWidget(),
        ],
      ),
    );
  }
}
