import 'package:flutter/material.dart';

class CircleIndicator extends StatelessWidget {
  final int count;
  final int current;

  const CircleIndicator({Key key, this.count, this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < count; i++)
          i == current ? selectDot() : unSelectDot()
      ],
    );
  }

  Widget selectDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: Colors.white,
      ),
    );
  }

  Widget unSelectDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: Colors.white.withOpacity(.4),
      ),
    );
  }
}
