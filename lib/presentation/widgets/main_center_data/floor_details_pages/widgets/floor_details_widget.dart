

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/common/divider_hor_widget.dart';

class FloorDetailsWidget extends StatelessWidget {
  const FloorDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Floor Details",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                sizeVer(10),
                Row(
                  children: [
                    Row(
                      children: [
                        Text("Floor name"),
                        sizeHor(10),
                        Container(
                          width: 180,
                          height: 25,
                          padding: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black,width: 1)
                          ),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Indoor",
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizeHor(20),
                    Column(
                      children: [
                        Text("94 - 100",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                        Text("Total Capacity",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    sizeHor(20),
                    Column(
                      children: [
                        Text("31",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                        Text("Tables",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        sizeVer(10),
        DividerHorWidget(thickness: 1.5,),
        sizeVer(10),
      ],
    );
  }
}
