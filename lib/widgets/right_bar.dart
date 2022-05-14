import 'package:flutter/material.dart';
import 'package:profile_wikrama/models/data.dart';

class RightBar extends StatelessWidget {
  final double barWidth;

  const RightBar({Key? key, @required this.barWidth = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: accentColor),
        ),
      ],
    );
  }
}
