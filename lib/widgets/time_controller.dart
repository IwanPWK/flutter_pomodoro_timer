import 'package:flutter/material.dart';

class TimeController extends StatelessWidget {
  const TimeController({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      child: Center(
        child: IconButton(
          icon: const Icon(Icons.play_arrow_sharp),
          color: Colors.white,
          iconSize: 55,
          onPressed: () {},
        ),
      ),
    );
  }
}
