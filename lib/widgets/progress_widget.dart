import 'package:flutter/material.dart';

import '../utils.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("0/4", style: textStyle(30, Colors.grey[300], FontWeight.bold)),
            Text("0/12", style: textStyle(30, Colors.grey[300], FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("ROUND", style: textStyle(25, Colors.white, FontWeight.bold)),
            Text("GOAL", style: textStyle(25, Colors.white, FontWeight.bold))
          ],
        )
      ],
    );
  }
}
