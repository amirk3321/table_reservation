import 'package:flutter/material.dart';

class StatefulDragArea extends StatefulWidget {
  final Widget child;

  const StatefulDragArea({Key? key, required this.child}) : super(key: key);

  @override
  _DragAreaStateStateful createState() => _DragAreaStateStateful();
}

class _DragAreaStateStateful extends State<StatefulDragArea> {
  Offset position = Offset(100, 100);
  double prevScale = 1;
  double scale = 1;

  void updateScale(double zoom) => setState(() => scale = prevScale * zoom);

  void commitScale() => setState(() => prevScale = scale);

  void updatePosition(Offset newPosition) =>
      setState(() => position = newPosition);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (details) => updateScale(details.scale),
      onScaleEnd: (_) => commitScale(),
      child: Container(
        height: 400,
        width: 200,
        child: Stack(
          children: [
            Positioned.fill(
                child: Container(color: Colors.amber.withOpacity(.4))),
            Positioned(
              left: position.dx,
              top: position.dy,
              child: Draggable(
                maxSimultaneousDrags: 1,
                feedback: widget.child,
                childWhenDragging: widget.child,
                onDragEnd: (details) {
                  print(details.offset);
                  updatePosition(details.offset);
                },
                child: Transform.scale(
                  scale: scale,
                  child: widget.child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
