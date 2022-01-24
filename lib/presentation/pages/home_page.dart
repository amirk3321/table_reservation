import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:table_rsv/const.dart';
import 'package:table_rsv/domain/entities/table_entity.dart';
import 'package:table_rsv/presentation/widgets/common/commons.dart';
import 'package:table_rsv/presentation/widgets/common/divider_hor_widget.dart';
import 'package:table_rsv/presentation/widgets/header_nav_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/floor_details_pages/widgets/container_button_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/main_center_data_widget.dart';
import 'package:table_rsv/presentation/widgets/main_center_data/widgets/add_floor_container_button.dart';
import 'package:table_rsv/presentation/widgets/nav_bar/vertical_navigation_widget.dart';
import 'package:table_rsv/presentation/widgets/theme/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSelectionValue1 = false;
  bool _isSelectionValue2 = false;
  bool _isSelectionValue3 = false;
  bool _isOutOfDoor = false;

  TextEditingController _tableNameEditingController = TextEditingController();
  TextEditingController _minCoversNameEditingController =
      TextEditingController();
  TextEditingController _maxCoversNameEditingController =
      TextEditingController();

  int _tableObjectIndex = -1;
  TableEntity? _selectedTableObject;

  List<TableEntity> _tableEntity = [];
  List<String> _images = [
    "assets/table1.png",
    "assets/table2.png",
    "assets/table4.png",
    "assets/table4ract.png",
    "assets/table4cirlce.png",
    "assets/table8.png"
  ];

  @override
  void dispose() {
    _tableNameEditingController.dispose();
    _minCoversNameEditingController.dispose();
    _maxCoversNameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 75,
            bottom: 0,
            left: 0,
            child: VerticalNavigationWidget(
              onPageChangeIndexCallBack: (index) {},
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                sizeVer(30),
                HeaderNavWidget(),
                sizeVer(15),
                DividerHorWidget(),
              ],
            ),
          ),
          Positioned(
            left: 250,
            top: 75,
            right: 0,
            child: MainCenterDataWidget(),
          ),
          Positioned(
              top: 330,
              left: 260,
              bottom: 0,
              child: _tableObjectIndex == -1
                  ? _tableLeftSideWidget()
                  : _selectedTableDetailsWidget()),
          _dragWidgetArea(),
        ],
      ),

      // body: Column(
      //   children: [
      //     sizeVer(30),
      //     HeaderNavWidget(),
      //     sizeVer(15),
      //     DividerHorWidget(),
      //     MainCenterDataWidget()
      //   // Expanded(
      //   //   child: Row(
      //   //     children: [
      //   //       Expanded(
      //   //         flex: 2,
      //   //         child: VerticalNavigationWidget(
      //   //           onPageChangeIndexCallBack: (index){},
      //   //         ),
      //   //       ),
      //   //       Expanded(
      //   //         flex: 6,
      //   //         child: ContentPage(),
      //   //       ),
      //   //     ],
      //   //   ),
      //   // )
      //
      //
      //   ],
      // ),
    );
  }

  Widget _dragWidgetArea() {
    return Stack(
      children: _tableEntity.map((table) {
        int index = _tableEntity.indexOf(table);
        return Positioned(
          left: _tableEntity[index].position.dx,
          top: _tableEntity[index].position.dy,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (_tableObjectIndex == index) {
                  _selectedTableObject = null;
                  _tableObjectIndex = -1;
                } else {
                  _selectedTableObject = _tableEntity[index];
                  _tableObjectIndex = index;
                }
              });
            },
            child: Draggable(
              feedback: _tableEntity[index].child,
              childWhenDragging: Opacity(
                opacity: .3,
                child: _tableEntity[index].child,
              ),
              onDragUpdate: (details) =>
                  setState(() => _tableEntity[index].position = details.delta),
              onDragEnd: (details) =>
                  setState(() => _tableEntity[index].position = details.offset),
              child: _tableEntity[index].objectType==TableConst.table?Stack(
                children: [
                  _tableEntity[index].child,
                  Positioned(left: _leftPosition(_tableEntity[index].max!).toDouble(),top: _topPosition(_tableEntity[index].max!).toDouble(),child: Text("${_tableEntity[index].title}",style: TextStyle(fontSize: 14),textAlign: TextAlign.center,)),
                ],
              ):_tableEntity[index].child,
            ),
          ),
        );
      }).toList(),
    );
  }

  int _leftPosition(int tableMax){

    if (tableMax == 6)
      return 3;
    else if (tableMax == 2 || tableMax == 3){
      return 7;
    }else if ( tableMax == 5){
      return 9;
    }else{
      return 0;
    }
  }

  int _topPosition(int tableMax){

    if (tableMax == 6)
      return 25;
    else if (tableMax == 2 || tableMax == 4 || tableMax == 5){
      return 8;
    }else if ( tableMax == 3 ){
      return 10;
      }else{
      return 0;
    }
  }

  Widget _tableLeftSideWidget() {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: _tableDefaultBody(),
    );
  }

  Widget _selectedTableDetailsWidget() {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        children: [
          Text(
            "Table Details",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                "Table name",
                style: TextStyle(fontSize: 14),
              ),
              sizeHor(5),
              Expanded(
                child: Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 8, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: TextField(
                    controller: _tableNameEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "e.g T-9",
                      contentPadding: EdgeInsets.only(bottom: 18),
                    ),
                  ),
                ),
              ),
              sizeHor(10),
            ],
          ),
          sizeVer(20),
          Row(
            children: [
              Text(
                "Min Covers",
                style: TextStyle(fontSize: 14),
              ),
              sizeHor(5),
              Expanded(
                child: Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 8, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: TextField(
                    controller: _minCoversNameEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "e.g 1",
                      contentPadding: EdgeInsets.only(bottom: 18),
                    ),
                  ),
                ),
              ),
              sizeHor(10),
              Text(
                "Max Covers",
                style: TextStyle(fontSize: 14),
              ),
              sizeHor(5),
              Expanded(
                child: Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 8, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1)),
                  child: TextField(
                    controller: _minCoversNameEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "e.g 4",
                      contentPadding: EdgeInsets.only(bottom: 18),
                    ),
                  ),
                ),
              ),
              sizeHor(10),
            ],
          ),
          sizeVer(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
                width: 15,
                child: Checkbox(
                  value: _isOutOfDoor,
                  onChanged: (value) {
                    setState(() {
                      _isOutOfDoor = value!;
                    });
                  },
                ),
              ),
              sizeHor(10),
              Text(
                "Out Of Door",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          sizeVer(30),
          ContainerButtonWidget(
            color: colorF7CEA8,
            iconData: AntDesign.delete,
            onClickListener: () {
              setState(() {
                if (_tableEntity.contains(_selectedTableObject)) {
                  _tableEntity.remove(_selectedTableObject);
                  _tableObjectIndex = -1;
                  _selectedTableObject = null;
                }
              });
            },
            width: 150,
            title: "Delete",
          ),
          sizeVer(20),
          _selectedTableObject!.objectType == TableConst.table
              ? ContainerButtonWidget(
                  color: colorF7CEA8,
                  iconData: MaterialCommunityIcons.update,
                  onClickListener: () {
                    setState(() {
                      if (_tableEntity.contains(_selectedTableObject)) {
                        _tableEntity[_tableObjectIndex].title =
                            _tableNameEditingController.text;
                      }
                    });
                  },
                  width: 150,
                  title: "Update",
                )
              : Text(""),
        ],
      ),
    );
  }

  Widget _tableDefaultBody() {
    return ListView(
      children: [
        Text(
          "Table",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _images
              .map((image) {
                int index=_images.indexOf(image);

                return Draggable(
                    childWhenDragging: Opacity(
                      opacity: .3,
                      child: Image.asset(image),
                    ),
                    onDragEnd: (details) => setState(() {
                      final newTableObject = TableEntity(
                        id: UniqueKey().toString(),
                        title: "T-n",
                        objectType: TableConst.table,
                        image: image,
                        min: 0,
                        max: index+1,
                        child: index+1==1?Container(height: 25,child: Image.asset(image,)):Image.asset(image,),
                        position: details.offset,
                      );

                      print(newTableObject.position);
                      print(newTableObject.image);
                      print(newTableObject.id);

                      _tableEntity.add(newTableObject);

                      print("checkObject Len ${_tableEntity.length}");
                    }),
                    feedback: Image.asset(image),
                    child: Image.asset(image));
          })
              .toList(),
        ),
        sizeVer(10),
        DividerHorWidget(
          thickness: 1.5,
        ),
        sizeVer(10),
        Text(
          "Objects",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        sizeVer(10),
        _objectsRowWidget(context),
        sizeVer(10),
        DividerHorWidget(
          thickness: 1.5,
        ),
        sizeVer(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Section",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            AddFloorContainerButtonWidget(
              title: "Add Section",
              onTap: () {},
              iconData: Icons.add,
            )
          ],
        ),
        sizeVer(10),
        _selectionSingleItem(
            value: _isSelectionValue1,
            color: Colors.deepOrangeAccent.withOpacity(.2),
            title: "Dining Area 1",
            onChanged: (value) {
              setState(() {
                _isSelectionValue1 = value!;
              });
            }),
        sizeVer(10),
        _selectionSingleItem(
            title: "Dining Area 2",
            color: Colors.grey.withOpacity(.2),
            value: _isSelectionValue2,
            onChanged: (value) {
              setState(() {
                _isSelectionValue2 = value!;
              });
            }),
        sizeVer(10),
        _selectionSingleItem(
            title: "Dining Area 3",
            color: Colors.orange.withOpacity(.2),
            value: _isSelectionValue3,
            onChanged: (value) {
              setState(() {
                _isSelectionValue3 = value!;
              });
            }),
        sizeVer(10),
      ],
    );
  }

  _objectsRowWidget(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Draggable(
          feedback: _objectContainer(
              h: 130, w: 10, color: colorGray7F7F7F.withOpacity(.4)),
          childWhenDragging: Opacity(
            opacity: .3,
            child: _objectContainer(
                h: 130, w: 10, color: colorGray7F7F7F.withOpacity(.4)),
          ),
          // onDragUpdate:(details) => setState(() => position = details.localPosition) ,
          onDragEnd: (details) => setState(() {
            final newTableObject = TableEntity(
              id: UniqueKey().toString(),
              title: "",
              image: "",
              child: _objectContainer(
                  h: 130, w: 10, color: colorGray7F7F7F.withOpacity(.4)),
              position: details.offset,
              objectType: TableConst.objects,
            );

            print(newTableObject.position);
            print(newTableObject.image);
            print(newTableObject.id);

            _tableEntity.add(newTableObject);

            print("checkObject Len ${_tableEntity.length}");
          }),
          child: _objectContainer(
              h: 130, w: 10, color: colorGray7F7F7F.withOpacity(.4)),
        ),
        sizeHor(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Draggable(
              feedback: _objectContainer(
                  h: 10,
                  w: MediaQuery.of(context).size.width / 4,
                  color: colorGray7F7F7F.withOpacity(.4)),
              childWhenDragging: Opacity(
                opacity: .3,
                child: _objectContainer(
                    h: 10,
                    w: MediaQuery.of(context).size.width / 4,
                    color: colorGray7F7F7F.withOpacity(.4)),
              ),
              // onDragUpdate:(details) => setState(() => position = details.localPosition) ,
              onDragEnd: (details) => setState(() {
                final newTableObject = TableEntity(
                  id: UniqueKey().toString(),
                  title: "",
                  objectType: TableConst.objects,
                  image: "",
                  child: _objectContainer(
                      h: 10,
                      w: MediaQuery.of(context).size.width / 4,
                      color: colorGray7F7F7F.withOpacity(.4)),
                  position: details.offset,
                );

                print(newTableObject.position);
                print(newTableObject.image);
                print(newTableObject.id);

                _tableEntity.add(newTableObject);

                print("checkObject Len ${_tableEntity.length}");
              }),
              child: _objectContainer(
                  h: 10,
                  w: MediaQuery.of(context).size.width / 4,
                  color: colorGray7F7F7F.withOpacity(.4)),
            ),
            sizeVer(5),
            Draggable(
              feedback: _objectContainer(
                  h: 25,
                  w: MediaQuery.of(context).size.width / 4,
                  color: colorGray7F7F7F.withOpacity(.4)),
              childWhenDragging: Opacity(
                opacity: .3,
                child: _objectContainer(
                    h: 25,
                    w: MediaQuery.of(context).size.width / 4,
                    color: colorGray7F7F7F.withOpacity(.4)),
              ),
              // onDragUpdate:(details) => setState(() => position = details.localPosition) ,
              onDragEnd: (details) => setState(() {
                final newTableObject = TableEntity(
                  id: UniqueKey().toString(),
                  title: "",
                  image: "",
                  objectType: TableConst.objects,
                  child: _objectContainer(
                      h: 25,
                      w: MediaQuery.of(context).size.width / 4,
                      color: colorGray7F7F7F.withOpacity(.4)),
                  position: details.offset,
                );

                print(newTableObject.position);
                print(newTableObject.image);
                print(newTableObject.id);

                _tableEntity.add(newTableObject);

                print("checkObject Len ${_tableEntity.length}");
              }),
              child: _objectContainer(
                  h: 25,
                  w: MediaQuery.of(context).size.width / 4,
                  color: colorGray7F7F7F.withOpacity(.4)),
            ),
            sizeVer(10),
            Row(
              children: [
                Draggable(
                  feedback: _objectContainer(
                      h: 80,
                      w: 40,
                      color: colorGray7F7F7F.withOpacity(.4),
                      radius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  childWhenDragging: Opacity(
                    opacity: .3,
                    child: _objectContainer(
                        h: 80,
                        w: 40,
                        color: colorGray7F7F7F.withOpacity(.4),
                        radius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                  // onDragUpdate:(details) => setState(() => position = details.localPosition) ,
                  onDragEnd: (details) => setState(() {
                    final newTableObject = TableEntity(
                      id: UniqueKey().toString(),
                      title: "",
                      image: "",
                      objectType: TableConst.objects,
                      child: _objectContainer(
                          h: 80,
                          w: 40,
                          color: colorGray7F7F7F.withOpacity(.4),
                          radius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      position: details.offset,
                    );

                    print(newTableObject.position);
                    print(newTableObject.image);
                    print(newTableObject.id);

                    _tableEntity.add(newTableObject);

                    print("checkObject Len ${_tableEntity.length}");
                  }),
                  child: _objectContainer(
                      h: 80,
                      w: 40,
                      color: colorGray7F7F7F.withOpacity(.4),
                      radius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                sizeHor(10),
                Draggable(
                  feedback: _objectContainer(
                      h: 80,
                      w: 40,
                      color: colorGray7F7F7F.withOpacity(.4),
                      radius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  childWhenDragging: Opacity(
                    opacity: .3,
                    child: _objectContainer(
                        h: 80,
                        w: 40,
                        color: colorGray7F7F7F.withOpacity(.4),
                        radius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                  ),
                  // onDragUpdate:(details) => setState(() => position = details.localPosition) ,
                  onDragEnd: (details) => setState(() {
                    final newTableObject = TableEntity(
                      id: UniqueKey().toString(),
                      title: "",
                      objectType: TableConst.objects,
                      image: "",
                      child: _objectContainer(
                          h: 80,
                          w: 40,
                          color: colorGray7F7F7F.withOpacity(.4),
                          radius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      position: details.offset,
                    );

                    print(newTableObject.position);
                    print(newTableObject.image);
                    print(newTableObject.id);

                    _tableEntity.add(newTableObject);

                    print("checkObject Len ${_tableEntity.length}");
                  }),
                  child: _objectContainer(
                      h: 80,
                      w: 40,
                      color: colorGray7F7F7F.withOpacity(.4),
                      radius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                ),
                sizeHor(10),
                Draggable(
                  feedback: _objectContainer(
                      h: 55, w: 55, color: colorGray7F7F7F.withOpacity(.4)),
                  childWhenDragging: Opacity(
                    opacity: .3,
                    child: _objectContainer(
                        h: 55, w: 55, color: colorGray7F7F7F.withOpacity(.4)),
                  ),
                  // onDragUpdate:(details) => setState(() => position = details.localPosition) ,
                  onDragEnd: (details) => setState(() {
                    final newTableObject = TableEntity(
                      id: UniqueKey().toString(),
                      title: "",
                      objectType: TableConst.objects,
                      image: "",
                      child: _objectContainer(
                          h: 55, w: 55, color: colorGray7F7F7F.withOpacity(.4)),
                      position: details.offset,
                    );

                    print(newTableObject.position);
                    print(newTableObject.image);
                    print(newTableObject.id);

                    _tableEntity.add(newTableObject);

                    print("checkObject Len ${_tableEntity.length}");
                  }),
                  child: _objectContainer(
                      h: 55, w: 55, color: colorGray7F7F7F.withOpacity(.4)),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _objectContainer(
      {BorderRadiusGeometry? radius,
      required double h,
      required double w,
      required Color color}) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: radius,
      ),
    );
  }

  _selectionSingleItem(
      {required Color color,
      String? title,
      bool? value,
      ValueChanged<bool?>? onChanged}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            height: 40,
            width: 150,
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomRight,
            child: Text(
              "$title",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        sizeHor(10),
        SizedBox(
          height: 10,
          width: 15,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
