import 'package:flutter/material.dart';

import '../utils.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    double selectedTime = 1800;
    return SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 320),
        scrollDirection: Axis.horizontal,
        child: Row(
            children: selectableTimes.map((time) {
          return InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              width: 70,
              height: 50,
              decoration: int.parse(time) == selectedTime
                  ? BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5))
                  : BoxDecoration(border: Border.all(width: 3, color: Colors.white30), borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: textStyle(25, int.parse(time) == selectedTime ? Colors.redAccent : Colors.white, FontWeight.w700),
                ),
              ),
            ),
          );
        }).toList()));
  }
}
