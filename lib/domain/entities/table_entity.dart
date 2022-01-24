import 'package:flutter/material.dart';

class TableEntity {
  String id="";
  String title="";
  String objectType="";
  String image="";
  Widget child;
  int? max=4;
  int? min=0;
  Offset position=Offset(0, 0);

  TableEntity({
    required this.image,
    required this.title,
    required this.child,
    this.max,
    this.min,
    required this.objectType,
    required this.position,
    required this.id,
  });
}
